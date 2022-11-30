<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>연성대학교 로그인</title>
<link rel="stylesheet" href="../assets/bootstrap-5.1.1/css/bootstrap.min.css">
<link href="../assets/fontawesome-free-6.1.1-web/css/all.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/32bf89da65.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/Main.css"/> 
</head>

<body style="background-image:url('img/ysu2.jpg'); background-size : cover;">
    <div class="container">
       <form action="LoginPro.jsp">
         <div class="middle">
                <div class="squ">
                    <div class="squ2">
                        <a style="color:white;">로그인</a>
                        <i class="fa-solid fa-xmark" style="font-size:25px; color:white; position:relative; top:10px; left:140px;" ></i>
                    </div>
                    <img src="img/lock.png" style="width:80px; position:relative; top:20px;"><br>
                    <span class="ys">연성대학교 사이트 방문을 환영합니다.<br></span>
                    <span class="ys2">로그인을 하시면 더 다양한 서비스를 이용하실 수 있습니다.</span>
                    <input type="text" class="form-control" style="width:250px; position:relative; top:55px; left:40px;" name ="snum" id="snum" autocomplete="off" placeholder="학번 입력" maxlength="50" required>
                    <input type="text" class="form-control" style="width:250px; position:relative; top:60px; left:40px;" autocomplete="off" placeholder="비밀번호 입력" maxlength="50" readonly>
                    
                    <button type="submit" class="button" style=" position:relative; top:-22px; left:235px;" >로그인</button> 

                    <span class="te" target='_blank' style="position:relative; top:45px; left:-105px;">학번/사번찾기></span>
                    <span class="te" target='_blank' style="position:relative; top:45px; left:-95px;">비밀번호 변경></span>
                </div>
            </div>
        </form>
    </div>
</body>
</html>