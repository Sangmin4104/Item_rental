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
<title>연성대학교 대표홈페이지</title>
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
.imgs4{
    position: relative;
    top: 600px;
    left: -120px;
    width: 1570px;
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
    color:black;
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
.searchT{
    position: relative;
    top: 50px;
    left: 1000px;
}
.search{
    position: relative;
    top: 50px;
    left: 1000px;
}
.searchD{
    position: relative;
    top: -20px;
    left: 400px;
}.searchDB{
    position: relative;
    top: -20px;
    left: 400px;
}
.pcount{
    position: relative;
    top:50px;
    left: 0px;
    
}
</style>
</head>
<body>
    <div class="container">
        <div class="squ">
            <img class="imgs3" src="img/top_vr.png">
            <span hidden><%=session.getAttribute("SNUM")%></span>
            <span class="logtext"><%=session.getAttribute("DNAME")%> <%=session.getAttribute("SNAME")%>님</span>
            <button class="button1">연장</button>
            <button class="button2" onclick="location='Logout.jsp'">로그아웃</button>
        </div>
        <div class="squ2">
            <img class="imgs1" src="img/logo.PNG" >
            <span class="te1"><strong>대학소개 입학안내 연성STORY 학과안내 학생서비스</strong></span>
            <button class="te2" onclick="location='A_NHeadListForm.jsp'"><strong>과대관리</strong></button>
            <img class="imgs2" src="img/bogi.PNG" >
        </div>
        <div>
            <img style="position: relative; top:0px; left:-115px;" src="img/main.jpg">
        </div>
    </div>
</body>
</html> 

