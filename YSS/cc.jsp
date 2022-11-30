<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%
request.setCharacterEncoding("utf-8");
String SNUM = String.valueOf(session.getAttribute("SNUM"));
String YID= request.getParameter("PR_YID");
%>
<!--String n = request.getParameter("n");-->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>연성대학교 비품대여홈페이지</title>
<link rel="stylesheet" href="../assets/bootstrap-5.1.1/css/bootstrap.min.css">
<style>
.squ{
        height: 40px;
        width: 1566px;
        position: relative;
        top: 0px;
        left: -150px;
        background-color:#43545F;
        border:0px;
    }
.squ2{
    height: 80px;
    width: 1566px;
    position: relative;
    top: 0px;
    left: -150px;
    background-color:white;
    border:0px;
}
.squ3{
    height: 200px;
    width: 1566px;
    position: relative;
    top: 0px;
    left: -150px;
    background-color:black;
    border:0px;
}
.squ4{
    height: 45px;
    width: 1566px;
    position: relative;
    top: 0px;
    left: -150px;
    background-color:#1AB7EA;
    border:0px;
}

.logout{
    position:relative;
    top:0px;
    left:1050px;
    color:white;
    font-size:13px;
    word-spacing:15px ;
}
.logtext{
    position:relative;
    top:0px;
    left:900px;
    color:white;
    font-size:13px;
    word-spacing:14px ;
    
}
.button1{
    background-color: #1AB7EA;
    width:50px;
    border: none;
    height: 40px;
    position:relative;
    top:0px;
    left:900px;
    color:white;
    font-size:16px;
    font-weight: 600;
    
}
.button2{
    background-color: #43545F;
    width:auto;
    border: none;
    height: auto;
    position:relative;
    top:0px;
    left:900px;
    color:white;
    font-size:13px;
    
}
.imgs1{
    position:relative;
    left: 250px;
    height: 80px;
}
.imgs2{
    position:relative;
    left: 400px;
    height: 80px;
}
.te1{
    color:black;
    position:relative;
    top: 3px;
    left: 350px;
    word-spacing:28px ;
    font-size: 18px;
}
.te2{
    color:#0877B5;
    position:relative;
    top: 3px;
    left: 380px;
    word-spacing:28px ;
    font-size: 18px;
}
.yss{
    color:white;
    position:relative;
    top: 50px;
    left: 730px;
    font-size: 60px;
}
.title{
    font-size:40px;
    color:black;
    position:relative;
    top: 40px;
    left: 555px;
}
h1 {
  font-size: 40px;
  min-width:11px;
  white-space: nowrap;
  margin: 0;
  position: fixed;
  color: transparent;
  top:50%;
  left:50%;
  transform: translate(-50%, -50%);
}

h1::before {
  content: "물품을 수령 하셨습니까?";
  position: absolute;
  top: 0;
  left: -10px;
  width: 120%;
  height: 100%;
  color: black;
  overflow: hidden;
  border-right: 1px solid black;
  animation: typing 15s  infinite;
}

@keyframes typing{
  0% {
    width: 0%;
  }
  50% {
    width: 120%;
  }
  
}

.imgs5{
  position: relative;
  top:50px;
  left:640px;
  opacity: 0.2;
  width: 300px;
  height:300px;
}
.line1{
  width:1566px;
  color: black;
  position: relative;
  top:-20px;
  left:-120px;
}
.imgs3{
    position: relative;
    height:40px;
    top: -2px;
    left: 300px;
    
}
.te2{
    color:#0877B5;
    position:relative;
    top: 3px;
    left: 380px;
    word-spacing:28px ;
    font-size: 18px;
    background-color: white;
    border: none;

}
.buttonl{
        background-color: white;
        border: 1px solid black;
        border-radius:5px;
        color: black;
        display: inline-block;
        font-size: 15px;
        position:relative; top:300px; left:-56px; z-index: 3;
    }
    .buttonl:hover{
        background-color: black;
        border-radius:5px;
        border: 1px solid black;
        color: white;
        display: inline-block;
        font-size: 15px;

        -webkit-transition: all .8s ease-out;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
    transition: all .3s ease-out;
    }

    .buttonl2{
        background-color: white;
        border: 1px solid black;
        border-radius:5px;
        color: black;
        display: inline-block;
        font-size: 14px;
        position: relative; top:273px; left: 794px; z-index: 3;
    }
    .buttonl2:hover{
        background-color: black;
        border-radius:5px;
        border: 1px solid black;
        color: white;
        display: inline-block;
        font-size: 15px;

        -webkit-transition: all .8s ease-out;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
    transition: all .3s ease-out;
    }
</style>
</head>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet myRS = null;

String sql = "";
 try{
  String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
  String dbId="c##gnarly";
  String dbPass="1234";
  
  Class.forName("oracle.jdbc.driver.OracleDriver"); 
  conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
  
    sql = "SELECT c.PR_YID,b.P_AMOUNT,c.PR_AMOUNT, c.PR_PNUM FROM PROD b,PROD_DOC c  where  b.P_PNUM = c.PR_PNUM and  c.PR_SNUM =? and c.PR_YID = ?";
       pstmt = conn.prepareStatement(sql); 
      pstmt.setString(1,SNUM);
      pstmt.setString(2,YID);
    
     
      myRS = pstmt.executeQuery();
      if(myRS != null){
        while(myRS.next()){
          String P_AMOUNT = myRS.getString("P_AMOUNT");
          String PR_AMOUNT = myRS.getString("PR_AMOUNT");
             String PR_YID = myRS.getString("PR_YID");
              String PR_PNUM = myRS.getString("PR_PNUM");
      

        
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Typing Effect</title>
</head>

<body>
  <h1>Typing Effect with CSS</h1>
</body>

</html>
  <div class="container">
      <div class="squ">
        <img class="imgs3" src="img/top_vr.png">
        <span hidden><%=session.getAttribute("SNUM")%></span>
        <span class="logtext"><%=session.getAttribute("DNAME")%> <%=session.getAttribute("SNAME")%>님</span>
        <button class="button1" onclick="location='MainPage.jsp'">연장</button>
        <button class="button2" onclick="location='Logout.jsp'">로그아웃</button>
    </div>
    <div class="squ2">
        <img class="imgs1" src="img/logo.PNG" style="cursor:pointer;" Onclick="location='SubPage.jsp'">
        <span class="te1"><strong>대학소개 입학안내 연성STORY 학과안내 학생서비스</strong></span>
        <button class="te2" onclick="location='MainPage.jsp'"><strong><U>비품대여</U></strong></button>
        <img class="imgs2" src="img/bogi.PNG" >
    </div>
    <hr class="line1">
    <form method="post" action="ccpro.jsp?">
          <table  align="center">
          <tr>
               <td><input type="text" id="qq" value= '<%=P_AMOUNT%>'  hidden></td>
    <td><input type="text" id="qqq" value= '<%=PR_AMOUNT%>' hidden></td>
    <td><input type="text" id="w"  name="w" hidden></td>
    <td><input type="text" id="PR_YID" name="PR_YID" value= '<%=PR_YID%>'  hidden></td>
    <td><input type="text" id="PR_PNUM" name="PR_PNUM" value= '<%=PR_PNUM%>'  hidden></td>
  <td><input type="submit" class="buttonl" value="수령했습니다." > </td>
</tr>
          </table>
 
    </form>
    
  </div>
  <input type="submit" class="buttonl2" value="수령 못했습니다" onclick="history.go(-1)">
<tr>
<div>
  <img class="imgs5" src="img/ylogo.jpg">
</div>



    <%
  
}
}
}catch(Exception e){ 
out.println("다시 시도해주세요.");
e.printStackTrace();
}finally{
if(pstmt != null) 
try{pstmt.close();}catch(SQLException sqle){}
if(conn != null) 
try{conn.close();}catch(SQLException sqle){}
}
%> 

</body>
<script>
 var str1 = document.getElementById("qq").value;
 var str2 = document.getElementById("qqq").value;
document.getElementById('w').value = parseInt(str1 - str2)




</script>
</html> 

 