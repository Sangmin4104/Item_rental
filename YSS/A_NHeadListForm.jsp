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
<title>연성대학교 비품대여홈페이지</title>
<link rel="stylesheet" href="../assets/bootstrap-5.1.1/css/bootstrap.min.css">
<link href="../assets/fontawesome-free-6.1.1-web/css/all.min.css" rel="stylesheet">
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
    background-color: white;
    border: none;

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
            <button class="button3" onclick="location='A_HeadListForm.jsp'">과대해제</button>
        </div>
        <div class="squ2">
            <img class="imgs1" src="img/logo.PNG" style="cursor:pointer;" Onclick="location='AdminSubPage.jsp'" >
            <span class="te1"><strong>대학소개 입학안내 연성STORY 학과안내 학생서비스</strong></span>
            <button class="te2" onclick="location='A_NHeadListForm.jsp'"><strong><U>과대관리</U></strong></button>
            <img class="imgs2" src="img/bogi.PNG" >
        </div>
        <div class="squ3" style="background-image: url('img/ex.jpg'); background-size: 1600px 300px;">
            <span class="yss"><strong>Y S S</strong></span>
        </div>
        <div class="squ4">
            <img src="img/house.png" style="cursor:pointer; position:relative; top: 5px; left: 285px; width:30px; height: 30px;" onclick="location='A_NHeadListForm.jsp'" >
        </div>
        <div>
            <span class="title"><strong>과 대 추 가</strong></span>
        </div>
            <tbody>
                <table class="table table-stripped table-hover" style="position:relative; top:70px;">
                    <thead>
                      <tr align="center">
                        <th scope="col">학 번</th>
                        <th scope="col">학 과 명</th>
                        <th scope="col">이 름</th>
                        <th scope="col">과 대 여 부</th>
                        <th scope="col">과 대 설 정</th>
                      </tr>
                    </thead>
                    <tbody class="table-group-divider">
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
  
      sql = "SELECT * from id where SHEAD = 0";
      pstmt = conn.prepareStatement(sql); 
      myRS = pstmt.executeQuery();
      if(myRS != null){
        while(myRS.next()){
          int SNUM = myRS.getInt("SNUM");
          String DNAME = myRS.getString("DNAME");
          String SNAME = myRS.getString("SNAME");
          String SHEAD = myRS.getString("SHEAD");

          if(SNUM != 9999){
%>


<tr align="center">
    <td><%=SNUM%></td>
    <td><%=DNAME%></td>
    <td><%=SNAME%></td>
    <td>X</td>
    <td  onclick="location='A_NHeadListPro.jsp?SNUM=<%=SNUM%>&DNAME=<%=DNAME%>&SNAME=<%=SNAME%>&SHEAD=<%=SHEAD%>'"><i style="cursor: pointer;" class="fa-solid fa-user-plus"></i></td>
</tr>





    <%
}
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

