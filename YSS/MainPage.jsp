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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
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
.imgs3{
    position: relative;
    height:40px;
    top: -2px;
    left: 300px;
    
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
    cursor:pointer;

}
.imgs2{
    position:relative;
    left: 400px;
    height: 80px;

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
.searchT{
    position: relative;
    top: 60px;
    left: 960px;
}
.search{
    position: relative;
    top: 60px;
    left: 950px;
    background-color: black;
}
searchD::-ms-expand { 
	display: none;
    
}
.searchD {
  -o-appearance: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  width: 214px;
  height: 43px;
  padding: 5px 30px 5px 10px;
  outline: 0 none;
  position: relative;
  top: -29px;
  left: 330px;
  background: none;
  color: white;

  border: none;
  border-left: 2px solid rgb(255, 255, 255, .3);
  border-right: 2px solid rgb(255, 255, 255, .3);
}
.searchD option {
  background: white;
  color: black;
  padding: 3px 0;
}
.icoArrow {
  position: absolute; 
  top: 9px; 
  left: 510px; 
  width: 35px; 
  height: inherit;
  z-index: 1;
  color: white;
  opacity: 0.7;

}
.icoArrow i {
  width: 50%;
  transition: .3s;
}
.searchD:focus + .icoArrow i {
  transform: rotate(180deg);
}
.searchDB{
    position: relative;
    top: -20px;
    left: 400px;
}
.pcount{
    position: relative;
    top:40px;
    left: 100px;
    
}
.line{
    width: 1100px;
    position: relative;
    top: 126px;
    left: 97px;
    border: solid 2px black;

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
    justify-content: space-between;
}
.serv_list .container11 .item_list .card{
    border: 1px solid black;
    border-radius: 5px;
    height: 300px;
    width: 250px;
    padding:5px;
    justify-content: space-between;
    margin-bottom: 20px;

}
.serv_list .container11 .item_list .card:hover{
    border: 3px solid #1AB7EA;
    border-radius: 5px;
    height: 300px;
    width: 250px;
    padding:5px;
    justify-content: space-between;
    margin-bottom: 20px;
    cursor: pointer;
}
.serv_list .container11 .item_list .card img{
    height: 200px;
    width: 237px;
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
        </div>
        <div class="squ2">
            <img class="imgs1" src="img/logo.PNG" style="cursor:pointer;" Onclick="location='SubPage.jsp'">
            <span class="te1" ><strong>대학소개 입학안내 연성STORY 학과안내 학생서비스</strong></span>
            <button class="te2" onclick="location='MainPage.jsp'"><strong><U>비품대여</U></strong></button>
            <img class="imgs2" src="img/bogi.PNG" >
        </div>
        <div class="squ3" style="background-image: url('img/ex.jpg'); background-size: 1600px 300px;">
            <span class="yss"><strong>Y S S</strong></span>
        </div>
        <div class="squ4">
            <img src="img/house.png" style="cursor:pointer; position:relative; top: 5px; left: 285px; width:30px; height: 30px;" onclick="location='MainPage.jsp'" >
        <form method="post" name="department" action="">
            <select class="searchD" id="department" name="department" size="1" onchange="location=document.department.department.value">
                <option >과 선택</option>
                <option value="MainPageSearchDepartmentList.jsp?department=디지털전자과">디지털전자과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=정보통신과">정보통신과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=전기과">전기과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=컴퓨터소프트웨어과">컴퓨터소프트웨어과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=건축과">건축과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=실내건축과">실내건축과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=토목환경과">토목환경과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=패션디자인비즈니스과">패션디자인비즈니스과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=뷰티스타일리스트과">뷰티스타일리스트과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=게임콘텐츠과">게임콘텐츠과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=웹툰만화콘텐츠과">웹툰만화콘텐츠과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=영상콘텐츠과">영상콘텐츠과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=시각디자인과">시각디자인과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=KPOP과">KPOP과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=유통물류과">유통물류과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=경영학과">경영학과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=세무회계과">세무회계과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=군사학과">군사학과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=경찰경호보안과">경찰경호보안과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=보건의료행정과">보건의료행정과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=식품영양학과">식품영양학과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=반려동물과">반려동물과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=스포츠케어과">스포츠케어과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=유아특수재활과">유아특수재활과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=사회복지과">사회복지과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=아동보육과">아동보육과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=유아교육과">유아교육과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=항공서비스과">항공서비스과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=관광과">관광과</option>
                <option value="MainPageSearchDepartmentList.jsp?department=호텔외식조리과">호텔외식조리과</option>
            </select>
            <span class="icoArrow"><i class="fa-solid fa-angle-down"></i></span>
        </form>

        
        <div class="top-bar" style="z-index:5; background:white; width:10px; height:10px; position: relative; top:-573px; left: 1100px;">
            <div class="menu-bar" style="width:30px; height:30px;">
                <div class="img-box" style="background:white;  color:white; height: 0px;"></div>
                
        <div class="btn-toggle-mobile-side-bar">
          <img class="testImg" src="img/mark.png" style="cursor:pointer; position:relative; top: 508px; left: 90px; width:30px; height: 30px;" >
        </div>    
               <div class="menu-box flex">
                   <div class="menu-box-1">
                       <div class="icon-1  flex"></div>
                   <div class="main-txt flex">My Menu</div>
                   <ul class="flex">
                       <li class="flex"><a href="Product_RegistarForm.jsp">물품등록</a></li>
                       <li class="flex"><a href="checkcheck.jsp">신청조회</a>
                       <%
Connection conn5 = null;
PreparedStatement pstmt5 = null;
String SNUM = String.valueOf(session.getAttribute("SNUM"));
ResultSet myRS5 = null;
int total5 = 0;

 try{
  String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
  String dbId="c##gnarly";
  String dbPass="1234";
  
  Class.forName("oracle.jdbc.driver.OracleDriver"); 
  conn5=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
      String sqlCount = "SELECT count(*) FROM C_CHECK a  ,PROD b  where  a.C_PNUM = b.P_PNUM and a.C_SNUM = ? and a.C_CHECK = '승인 완료'";
      pstmt5 = conn5.prepareStatement(sqlCount); 
      pstmt5.setString(1,SNUM);
      myRS5 = pstmt5.executeQuery();
      if(myRS5.next()){
          total5 = myRS5.getInt(1); // select문의 첫번째 값을 가져옴
      }

      if(total5 != 0){
     
%>

<strong class="pcount" style="position:relative; top:13px; left:-15px; z-index: 5; color: red;" > <%=total5%></strong>

<%
}
}catch(Exception e){ 
out.println("다시 시도해주세요.");
e.printStackTrace();
}finally{
if(pstmt5 != null) 
try{pstmt5.close();}catch(SQLException sqle){}
if(conn5 != null) 
try{conn5.close();}catch(SQLException sqle){}
}
%> 
                        </li>
                       <li class="flex"><a href="Rental_Check.jsp">대여조회</a></li>
                       <li class="flex"><a href="Product_RegistarCheck.jsp">등록물품확인</a></li>
                       <li class="flex"><a href="check.jsp">신청요청확인</a>
                       <%
Connection conn6 = null;
PreparedStatement pstmt6 = null;
String snum = String.valueOf(session.getAttribute("SNUM"));
ResultSet myRS6 = null;
int total6 = 0;

 try{
  String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
  String dbId="c##gnarly";
  String dbPass="1234";
  
  Class.forName("oracle.jdbc.driver.OracleDriver"); 
  conn6=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
      String sqlCount = "SELECT count(*) FROM C_CHECK a ,PROD_DOC b ,ID c  ,PROD d where a.C_CHECK ='대기' and d.P_SNUM = ? and c.SNUM =a.C_SNUM  and a.C_PNUM = d.P_PNUM and b.PR_PNUM = a.C_PNUM and b.PR_YID = a.C_YID ";
      pstmt6 = conn6.prepareStatement(sqlCount);
      pstmt6.setString(1,snum); 
      myRS6 = pstmt6.executeQuery();
      if(myRS6.next()){
          total6 = myRS6.getInt(1); // select문의 첫번째 값을 가져옴
      }
     
      if(total6 != 0){
%>

<strong class="pcount1" style="position:relative;  top:13px; left:-15px; z-index: 5; color: red;"><%=total6%></strong>

<%
      }
}catch(Exception e){ 
out.println("다시 시도해주세요.");
e.printStackTrace();
}finally{
if(pstmt6 != null) 
try{pstmt6.close();}catch(SQLException sqle){}
if(conn6 != null) 
try{conn6.close();}catch(SQLException sqle){}
}
%> 
                        </li>
                   </ul>
               </div>
                   </div>
            </div>
        </div>

        <!-- <img src="img/mark.png" style="cursor:pointer; position:relative; top: -65px; left: 1200px; width:30px; height: 30px;" onclick="location='Mymenu.jsp'"> -->
        </div>
        <div>
            <span class="title"><strong>물 품 목 록</strong></span>
        </div>
        <hr class="line">
        <form name="search" method ="post" action="MainPageSearchProductList.jsp">
            <input type="text" class="searchT" name="keyWord" value="" placeholder="물품명" autocomplete="off"/>
            <button class="search" onclick="searchCheck()" ><i class="fa-solid fa-magnifying-glass" style="color: white;"></i></button>
        </form>

                <%
Connection conn1 = null;
PreparedStatement pstmt1 = null;

ResultSet myRS1 = null;
int total = 0;

 try{
  String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
  String dbId="c##gnarly";
  String dbPass="1234";
  
  Class.forName("oracle.jdbc.driver.OracleDriver"); 
  conn1=DriverManager.getConnection(jdbcUrl, dbId, dbPass );

      String sql = "SELECT * from id where SNUM = ?";
      pstmt1 = conn1.prepareStatement(sql); 
      pstmt1.setString(1,snum);
      myRS1 = pstmt1.executeQuery();
      if(myRS1 != null){
        while(myRS1.next()){
          int SHEAD = myRS1.getInt("SHEAD");

      String sqlCount = "SELECT count(*) FROM ID i, PROD p where i.snum = p.p_snum AND p.p_amount > 0 AND p.p_state='O'";
      
      pstmt1 = conn1.prepareStatement(sqlCount); 
      myRS1 = pstmt1.executeQuery();
      if(myRS1.next()){
          total = myRS1.getInt(1); // select문의 첫번째 값을 가져옴
      }

      if(SHEAD == 1){
     
%>

<strong class="pcount" >총 <%=total%>개</strong>

<%
}else{
  String sqlCount1 = "SELECT count(*) FROM ID i, PROD p where p.p_state='O' and i.shead=0 and p.p_amount > 0 and i.snum = p.p_snum";
      pstmt1 = conn1.prepareStatement(sqlCount1); 
      myRS1 = pstmt1.executeQuery();
      if(myRS1.next()){
          total = myRS1.getInt(1);
      }
      %>
      <strong class="pcount" >총 <%=total%>개</strong>
      <%
}
}
}
}catch(Exception e){ 
out.println("다시 시도해주세요.");
e.printStackTrace();
}finally{
if(pstmt1 != null) 
try{pstmt1.close();}catch(SQLException sqle){}
if(conn1 != null) 
try{conn1.close();}catch(SQLException sqle){}
}
%> 


<section class="serv_list">
    <div class="container11">
        <div id="card" class="item_list">

<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet myRS = null;

try{
String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
String dbId="c##gnarly";
String dbPass="1234";

Class.forName("oracle.jdbc.driver.OracleDriver"); 
conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );

  String sql = "SELECT * from id where SNUM = ?";
  pstmt = conn.prepareStatement(sql); 
  pstmt.setString(1,snum);
  myRS = pstmt.executeQuery();
  if(myRS != null){
    while(myRS.next()){
      int SHEAD = myRS.getInt("SHEAD");

  sql = "SELECT p.p_pnum, p.p_pname, i.dname, i.sname, p.p_amount, p.p_rental, p.p_snum, p.p_images FROM ID i, PROD p where i.snum = p.p_snum AND p.p_state='O'  order by p.p_pnum";
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

      if(SHEAD == 1){
        if(P_AMOUNT > 0){
        
%>


        <div class="card" onclick="location='Information.jsp?P_PNUM=<%=P_PNUM%>&P_PNAME=<%=P_PNAME%>&DNAME=<%=DNAME%>&SNAME=<%=SNAME%>&P_SNUM=<%=P_SNUM%>&P_AMOUNT=<%=P_AMOUNT%>&P_RENTAL=<%=P_RENTAL%>'">
            <div class="img">
                <img src="p_img/<%=P_IMAGES%>" alt="">
            </div>
            <div class="text">
                <h4 style="position:relative;"><%=P_PNAME%></h4>
                  <p style="position:relative; top:-3px;"><%=SNAME%></p>
                <p style="position:relative; top:-13px;"><%=DNAME%></p>
            </div>
        </div>

    <%
  }
      }else{
        sql = "SELECT p.p_pnum, p.p_pname, i.dname, i.sname, p.p_amount, p.p_rental, p.p_snum, p.p_images FROM ID i, PROD p where i.snum = p.p_snum AND i.shead = 0 AND p.p_state='O'  order by p.p_pnum";
        pstmt = conn.prepareStatement(sql); 
        myRS = pstmt.executeQuery();
        if(myRS != null){
          while(myRS.next()){
            int PP_PNUM = myRS.getInt("P_PNUM");
            String PP_PNAME = myRS.getString("P_PNAME");
            String DDNAME = myRS.getString("DNAME");
            String SSNAME = myRS.getString("SNAME");
            int PP_AMOUNT = myRS.getInt("P_AMOUNT");
            String PP_RENTAL = myRS.getString("P_RENTAL");
            int PP_SNUM =myRS.getInt("P_SNUM");
            String PP_IMAGES =myRS.getString("P_IMAGES");
            if(PP_AMOUNT > 0){
            %>

            <div class="card" onclick="location='Information.jsp?P_PNUM=<%=PP_PNUM%>&P_PNAME=<%=PP_PNAME%>&DNAME=<%=DDNAME%>&SNAME=<%=SSNAME%>&P_SNUM=<%=PP_SNUM%>&P_AMOUNT=<%=PP_AMOUNT%>&P_RENTAL=<%=PP_RENTAL%>'">
              <div class="img">
                  <img src="p_img/<%=PP_IMAGES%>" alt="">
              </div>
              <div class="text">
                  <h4 style="position:relative;"><%=PP_PNAME%></h4>
                  <p style="position:relative; top:-3px;"><%=SSNAME%></p>
                  <p style="position:relative; top:-13px;"><%=DDNAME%></p>
              </div>
          </div>



            <%
          }
          }
        }
      }
      }
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
</div>
</div>
</section>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">

</script> 
<script>
    function searchCheck(){
       //검색
       if(search.keyWord.value ==""){
           alert("검색 단어를 입력하세요.");
           return;
       }
   }

   console.clear();

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

$(function (){
	$("#btn_toggle").click(function (){
  	$("#card").toggle();
  });
});
</script>
</html> 

