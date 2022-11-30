<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!--String n = request.getParameter("n");-->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>F5 - Sign In</title>
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
    .logtext{
        position:relative;
        top:0px;
        left:900px;
        color:white;
        font-size:13px;
        word-spacing:14px ;
    }
    .logout{
        position:relative;
        top:0px;
        left:1050px;
        color:white;
        font-size:13px;
        word-spacing:15px ;
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
        .button3{
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
    .imgs3{
        position: relative;
        height:40px;
        top: -2px;
        left: 300px;
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
</style>
</head>
<body>
    <div class="container">
        <div class="squ">
            <img class="imgs3" src="img/top_vr.png">
            <span hidden><%=session.getAttribute("SNUM")%></span>
            <span class="logtext"><%=session.getAttribute("DNAME")%> <%=session.getAttribute("SNAME")%>님</span>
            <button class="button1" onclick="location='MainPage.jsp'">연장</button>
            <button class="button2" onclick="location='Logout.jsp'">로그아웃</button>
            <button class="button3" onclick="location='A_HeadListPro.jsp'">과대수정</button>
        </div>
        <div class="squ2">
            <img class="imgs1" src="img/logo.PNG" >
            <span class="te1"><strong>대학소개 입학안내 연성STORY 학과안내 학생서비스</strong></span>
            <span class="te2"><strong><U>비품대여</U></strong></span>
            <img class="imgs2" src="img/bogi.PNG" >
        </div>
        <div class="squ3" style="background-image: url('img/ex.jpg'); background-size: 1600px 300px;">
            <span class="yss"><strong>Y S S</strong></span>
        </div>
        <div class="squ4">
            <button onclick="location='Mymenu.jsp'"><img src="img/mark.png" style="position:relative; top: 5px; left: 1200px; width:30px; height: 30px;" ></button>
        </div>
        <div>
            <span class="title"><strong>물 품 목 록</strong></span>
        </div>
        <form name="serach" method ="post">
            <input type="text" name="keyWord" />
            <input type="button" value="검색" onclick="searchCheck(form)" />   
        </form>
        <table class ="table table-bordered table-stripped table-hover" style="position:relative; top:70px; ">
            <thead>
                <tr class="table-dark" align="center">
                    <td>물 품 명</td>
                    <td>학 과</td>
                    <td>이 름</td>
                    <td>수 량</td>
                    <td>대 여 여 부</td>
                </tr>
            </thead>
            <tbody>
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
  
      sql = "SELECT p.p_pnum, p.p_pname, i.dname, i.sname, p.p_amount, p.p_rental, p.p_snum, p.p_images FROM ID i, PROD p where i.snum = p.p_snum";
      pstmt = conn.prepareStatement(sql); 
      myRS = pstmt.executeQuery();
      if(myRS != null){
        while(myRS.next()){
          int P_PNUM = myRS.getInt("P_PNUM");
          String P_PNAME = myRS.getString("P_PNAME");
          String DNAME = myRS.getString("DNAME");
          String SNAME = myRS.getString("SNAME");
          int P_AMOUNT = myRS.getInt("P_AMOUNT");
          String P_RENTAL = myRS.getString("P_RENTAL");
          int P_SNUM =myRS.getInt("P_SNUM");
          String P_IMAGES =myRS.getString("P_IMAGES");
%>


<tr align="center" onclick="location='Information.jsp?P_PNUM=<%=P_PNUM%>&P_PNAME=<%=P_PNAME%>&DNAME=<%=DNAME%>&SNAME=<%=SNAME%>&P_SNUM=<%=P_SNUM%>&P_AMOUNT=<%=P_AMOUNT%>&P_RENTAL=<%=P_RENTAL%>'">
    <td HIDDEN><%=P_PNUM%></td>
    <td><%=P_PNAME%></td>
    <td><%=DNAME%></td>
    <td><%=SNAME%></td>
    <td><%=P_AMOUNT%></td>
    <td><%=P_RENTAL%></td>
    
</tr>





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
    function searchCheck(frm){
       //검색
      
       if(frm.keyWord.value ==""){
           alert("검색 단어를 입력하세요.");
           frm.keyWord.focus();
           return;
       }
       frm.submit();      
   }
</script>
</html> 

