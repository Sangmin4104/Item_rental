<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%
request.setCharacterEncoding("utf-8");

String PR_PNUM =request.getParameter("PR_PNUM");
String PR_SNUM = request.getParameter("PR_SNUM");
String P_PNAME = request.getParameter("P_PNAME");
String PR_AMOUNT =request.getParameter("PR_AMOUNT");
String PR_END = request.getParameter("PR_END");
String P_SNUM = request.getParameter("P_SNUM");
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
/* #btn{
  background: white;
  border: 1px solid #1AB7EA;
  width: 100px;
  height: 90px;
  text-align: center;
}
#btn:hover{
  border-color: #1AB7EA;
  background: #1AB7EA;
  width: 100px;
  height: 90px;
} */
.button{
        background-color: white;
        border: 1px solid black;
        border-radius:5px;
        width:100px;
        height:90px;
        color: black;
        display: inline-block;
        font-size: 18px;
        position: relative;
        top: 85px;
        left: 375px;
    }
    .button:hover{
        background-color: black;
        border-radius:5px;
        width:100px;
        height:90px;
        border: none;
        color: white;
        display: inline-block;
        font-size: 18px;
        position: relative;
        top: 85px;
        left: 375px;
        -webkit-transition: all .8s ease-out;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
    transition: all .3s ease-out;
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
    cursor: pointer;
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
.line1{
    width: 900px;
    position: relative;
    top: 60px;
    left: 200px;
    border: solid 2px black;

}
.line2{
    width: 900px;
    position: relative;
    top: 85px;
    left: 200px;
    border: solid 1px black;
}
.line3{
    width: 900px;
    position: relative;
    top: 115px;
    left: 200px;
    border: solid 1px black;
}
.line4{
    width: 900px;
    position: relative;
    top: 910px;
    left: 200px;
    border: solid 1px black;
}
.serv_list{
    padding-top: 70px;
    padding-bottom: 70px;
}
.serv_list .container11{

    max-width: 1100px;
    max-height: 500px;
    margin: auto;
}
.serv_list .container11 .title ul{
    padding-left: 0;
    list-style: none;
}
.serv_list .container11 .title ul li{
    display: inline;
    margin-right: 30px;
}
.serv_list .container11 .title ul li a{
    text-decoration: none;
    color: #444;
}
.serv_list .container11 .item_list{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
}
.serv_list .container11 .item_list .card{
    border: 1px solid black;
    border-radius: 5px;
    height: 450px;
    width: 850px;
    padding:5px;
    justify-content: space-between;
    margin-bottom: 20px;
    position: relative;
    top: -10px;
    left:10px;

}
.serv_list .container11 .item_list .card img{
    position: relative;
    top: 18px;
    left: 18px;
    height: 800px;
    width: 800px;
    padding: 5px;
}
.serv_list .container11 .item_list .card .text p{
    font-size: 14px;
    opacity: .8;
}
.serv_list .container11 .item_list .card .text button{
    background: black;
    color: white;
    border: 2px solid white;
    border-radius: 5px;
    padding:5px 10px;
    font-size: 10px;
    transition: .5s ease;
}
.serv_list .container11 .item_list .card .text button:hover{
    transition: .5s ease;
    border:2px solid black;
    background: transparent;
    color: black;
}

.t1{
    position: relative;
    top: 15px;
    left: 220px;
}
.t2{
    position: relative;
    top: 25px;
    left: 220px;
    font-size: 13px;
}
html {
  /* 영문이면 roboto가 적용되고, 한글이면 Noto Sans KR가 적용되도록 아래와 같은 순서로 배치 */
  font-family: "Roboto", "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
body, ul, li, h1 {
  margin:0;
  padding:0;
  list-style:none;
}

a {
  color:inherit;
  text-decoration:none;
}

label[for] {
  cursor:pointer;
  user-select:none;
}

/* 라이브러리 */
.block {
  display:block;
}

.inline-block {
  display:inline-block;
}

.relative {
  position:relative;
}

.cell {
  float:left;
  box-sizing:border-box;
}

.cell-right {
  float:right;
  box-sizing:border-box;
}

.row::after {
  content:"";
  display:block;
  clear:both;
}

.clear-both {
  clear:both;
}

.img-box > img {
  width:30%;
  display:block;
}

.con {
  margin-left:auto;
  margin-right:auto;
}

.margin-0-auto {
  margin-left:auto;
  margin-right:auto;
}

.text-align-center {
  text-align:center;
}

.text-align-right {
  text-align:right;
}

.line-height-0 {
  line-height:0;
}

.line-height-0 > * {
  line-height:normal;
}


.height-100p {
  height:100%;
}

.height-50p {
  height:50%;
}

.border-box {
  box-sizing:border-box;
}

.font-size-dot-8rem {
  font-size:.8rem;
}

/* 라이브러리 - flex */
* > .flex {
  display:flex;
}

* > .flex-grow-1 {
  flex-grow:1;
}

* > .flex-jc-s {
  justify-content:flex-start;
}

* > .flex-jc-e {
  justify-content:flex-end;
}

* > .flex-jc-sb {
  justify-content:space-between;
}

* > .flex-ai-c {
  align-items:center;
}

* > .flex-ai-s {
  align-items:flex-start;
}

* > .flex-ai-e {
  align-items:flex-end;
}

* > .flex-as-s {
  align-self:stretch;
}

* > .flex-as-c {
  align-self:center;
}

* > .flex-as-s {
  align-self:flex-start;
}

* > .flex-as-e {
  align-self:flex-end;
}

* > .flex-column-nowrap {
  flex-flow:column nowrap;
}

* > .flex-column-wrap {
  flex-flow:column wrap;
}

.flex-ch-basis-0 > * {
  flex-basis:0;
}

* > .flex-1-0-0 {
  flex:1 0 0;
}

/* 메뉴바 */
/* 커스텀 */

.con {
  width:1500px;
}
.btn-toggle-mobile-side-bar{
    margin-left:10px;
    width:50px;
    height:50px;
    position:relative;
    cursor:pointer;
}
.btn-toggle-mobile-side-bar > div{
    position:absolute;
    top:0;
    left:0;
    background-color:black;
    width:100%;
    height:10%;
}
.btn-toggle-mobile-side-bar > div:nth-child(2){
    top:40%;  
}
.btn-toggle-mobile-side-bar > div:nth-child(3){
    top:80%;  
}



.top-bar > .menu-bar > .img-box{
    height:50px;
    background-position:center;
    background-repeat: no-repeat;
    background-size: cover; 
}
.menu-box{
    position:fixed;
    width:250px;
    left:-300px;
    top:0;
    bottom:0;
    background-color:white; /*#dfdfdf*/
    opacity: 1;
    transition: left 0.3s; /* 0.3초만에 왼쪾에서 나옴*/
}

.menu-box.active{
    left:0;
}
.menu-box > .menu-box-1{
    flex-direction:column;
    width:100%;
} 
.menu-box > .menu-box-1 > .icon-1{
    justify-content:flex-end;
    font-size:30px;
    margin-top:0;
    margin-right:10px;
    cursor:pointer; 
}
.menu-box > .menu-box-1 > .main-txt{
    margin-top:50px;
    font-size:25px;
    font-weight:bold;
    padding:0 20px;
}
.menu-box > .menu-box-1 > ul{
    margin-top:70px;
    flex-direction:column;
}
.menu-box > .menu-box-1 > ul > li{
    font-size:18px;
}
.menu-box > .menu-box-1 > ul > li > a{
    border-bottom:1px solid #afafaf;
    padding:15px 20px;
    width:100%;
}
.menu-box > .menu-box-1 > ul > li:first-child > a{
    border-top:1px solid #afafaf;
}
.menu-box > .menu-box-1 > ul > li:hover > a{
    color:red;
}

.emphasized {
  position:fixed;
  top:150px; left:30px;
  box-shadow : rgba(0,0,0,0.5) 0 0 0 9999px, rgba(0,0,0,0.5) 2px 2px 3px 3px;
  z-index : 100;
}
.emphasized1 {
  box-shadow : none;
  z-index: 0;
}

.buttonex {
    background-position: 25px 0px;
    box-sizing: border-box;
    color: rgb(255, 255, 255);
    cursor: pointer;
    display: inline-block;
    height: 50px;
    line-height: 50px;
    text-align: left;
    text-decoration: none;
    text-transform: uppercase;
    vertical-align: middle;
    width: 100%;
    border-radius: 3px;
    margin: 10px auto;
    outline: rgb(255, 255, 255) none 0px;
    padding-left: 20%;
    transition: all 0.2s cubic-bezier(0.72, 0.01, 0.56, 1) 0s;
    -webkit-transition: all .3s ease;
    -moz-transition: all .3s ease;
    -ms-transition: all .3s ease;
    -o-transition: all .3s ease;
    transition: all .3s ease;
}

</style>
</head>
<body>
    <div class="container">
        <div>
            <span class="title" hidden><strong>상 세 정 보</strong></span>
        </div>
        <hr class="line1" hidden>
        <section class="serv_list">
            <div class="container11">
                <div class="item_list">
        
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
  
      sql = "select i.dname, i.snum, i.sname, to_char(pd.pr_start, 'YYYY-MM-DD') as pr_start, to_char(pd.pr_end, 'YYYY-MM-DD') as pr_end from prod p, id i, prod_doc pd where p.p_snum = i.snum and p.p_snum = ? and pd.pr_cancel='반납'";
      pstmt = conn.prepareStatement(sql); 
      pstmt.setString(1, P_SNUM);
      myRS = pstmt.executeQuery();
      if(myRS.next()){

        
          String DNAMEE = myRS.getString("DNAME");
          String SNUMM = myRS.getString("SNUM");
          String SNAMEE = myRS.getString("SNAME");
          String pr_start = myRS.getString("pr_start");
          String pr_end = myRS.getString("pr_end");

%>


<div class="card">
  <h1 style="text-align:center; position:relative; top:45px; z-index:1;">반 납 증</h1>
  <i style="cursor: pointer; font-size: 20px; position:relative; top:-50px; left:40x;" class="fa-solid fa-arrow-left" onclick="history.go(-1)"></i>
    <div>
      <span style="position:relative; top:60px; left:80px; z-index:1;">품목 : <%=P_PNAME%></span><br>
      <span style="position:relative; top:70px; left:80px; z-index:1;">수량 : <%=PR_AMOUNT%></span>
      <span style="position:relative; top:110px; left:220px; z-index:1;">상기 물품을 <strong><%=PR_END%> </strong> 에 반납하였음.</span><br>
      <span style="position:relative; top:240px; left:591px; z-index:1;">관리자 : <%=DNAMEE%> <%=SNAMEE%></span><br>
      <span style="position:relative; top:110px; left:591px; z-index:1;">대여자 : <%=session.getAttribute("DNAME")%> <%=session.getAttribute("SNAME")%> </span>
      <img src="img/ylogo.jpg" style="width:300px; height:300px; position:relative; top:-50px; left:50px; opacity: 0.1;">
    </div>
   
</div>



    <%
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
</div>
</div>
</section>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">

</script> 
<script >
    function MobileSideBar__toggle() {
    var $btn = $('.btn-toggle-mobile-side-bar');

    if ( $btn.hasClass('active') ) {
        $btn.removeClass('active');
        $('.menu-box').removeClass('active');
    }
    else {
        $btn.addClass('active');
        $('.menu-box').addClass('active');
    }
}

function MobileSideBar__init() {
    $('.btn-toggle-mobile-side-bar, .menu-box > .menu-box-1 > .icon-1').click(MobileSideBar__toggle);
}

$(function() {
    MobileSideBar__init();
}); 


$(document).ready(function(){

$("img.testImg").click(function(){

  $("div.top-bar").toggleClass("emphasized");

});

})  


$(document).ready(function(){

$("i.fas fa-times").click(function(){

  $("div.container").toggleClass("emphasized1");

});

})  
</script>
</html> 

