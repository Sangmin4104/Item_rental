<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%
request.setCharacterEncoding("utf-8");

String SNUM = "";
SNUM = String.valueOf(session.getAttribute("SNUM"));


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
.buttonl{
        background-color: white;
        border: 1px solid black;
        border-radius:5px;
        color: black;
        display: inline-block;
        font-size: 15px;
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
        font-size: 15px;
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
    .button{
            background-color: #1AB7EA;
            border-radius:5px;
            width:80px;
            height:80px;
            border: none;
            color: white;
            display: inline-block;
            font-size: 18px;
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
/* .table_ex:hover{
  border: 1.5px solid black;
  border-top: 1.5px solid black;
} */

/* .buttonl{
        background-color: white;
        border: 1px solid black;
        border-radius:5px;
        width: 90px;
        height: 30px;
        color: black;
        display: inline-block;
        font-size: 15px;
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
    } */
</style>
</head>
<body>

    <div class="container">
        <div class="squ">
            <img class="imgs3" src="img/top_vr.png">
            <span class="logtext"><%=session.getAttribute("DNAME")%> <%=session.getAttribute("SNAME")%>님</span>
            <button class="button1" onclick="location='MainPage.jsp'">연장</button>
            <button class="button2" onclick="location='Logout.jsp'">로그아웃</button>
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
            <img src="img/house.png" style="cursor:pointer; position:relative; top: 5px; left: 360px; width:30px; height: 30px;" onclick="location='MainPage.jsp'" >
            <div class="top-bar" style="z-index:5; background:white; width:10px; height:10px; position: relative; top:-573px; left: 1100px;">
                <div class="menu-bar" style="width:30px; height:30px;">
                    <div class="img-box" style="background:white;  color:white; height: 0px;"></div>
                    
            <div class="btn-toggle-mobile-side-bar">
              <img class="testImg" src="img/mark.png" style="cursor:pointer; position:relative; top: 550px; left: 90px; width:30px; height: 30px;" >
            </div>    
                   <div class="menu-box flex">
                       <div class="menu-box-1">
                           <div class="icon-1  flex"><i class="fas fa-times"></i></div>
                       <div class="main-txt flex">My Menu</div>
                       <ul class="flex">
                           <li class="flex"><a href="Product_RegistarForm.jsp">물품등록</a></li>
                           <li class="flex"><a href="checkcheck.jsp">신청조회</a>
                           <%
    Connection conn5 = null;
    PreparedStatement pstmt5 = null;
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
        </div>
        <div>
            <span class="title"><strong>대 여 조 회</strong></span>
        </div>
            <table class="table table-stripped table-hover" style="position:relative; top:70px;">
                <thead>
                    <tr  align="center">
                        <th scope="col">반 납 여 부</th>
                        <th scope="col">대 여 번 호</th>
                        <th scope="col">물 품 명</th>
                        <th scope="col">수 량</th>
                        <th scope="col">대 여 일</th>
                        <th scope="col">반 납 (예 정) 일</th>
                        <th scope="col"></th>
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
  
      sql = "SELECT pr.pr_cancel, p.p_snum,p.p_amount, pr.pr_yid, pr.pr_pnum, pr.pr_snum, i.dname, i.sname, pr.pr_amount , to_char(pr.pr_start, 'YYYY-MM-DD') pr_start, to_char(pr.pr_end, 'YYYY-MM-DD') pr_end, p.p_pname FROM prod p, ID i, PROD_DOC pr WHERE i.snum = ? and pr.pr_snum = i.snum and p.p_pnum = pr.pr_pnum";
      pstmt = conn.prepareStatement(sql); 
      pstmt.setString(1, SNUM);
      myRS = pstmt.executeQuery();
      if(myRS != null){
        while(myRS.next()){
          String PR_CANCEL = myRS.getString("PR_CANCEL");
          int PR_YID = myRS.getInt("PR_YID");  
          int PR_PNUM = myRS.getInt("PR_PNUM");
          String PR_SNUM = myRS.getString("PR_SNUM");
          String P_PNAME = myRS.getString("P_PNAME");
          String DNAME = myRS.getString("DNAME");
          String SNAME = myRS.getString("SNAME");
          int PR_AMOUNT = myRS.getInt("PR_AMOUNT");
          int P_AMOUNT = myRS.getInt("P_AMOUNT");
          String PR_START = myRS.getString("PR_START");
          String PR_END = myRS.getString("PR_END");
          String P_SNUM = myRS.getString("P_SNUM");

%>

<tr class="table_ex">
   <form method='post' action='Rental_Check2.jsp' >
    <td ><input type="text"  style="background:none; text-align:center; border:none;" name="PR_CANCEL" value= '<%=PR_CANCEL%>'readonly></td>
    <td ><input type="text"  style="background:none; text-align:center; border:none;"name="PR_YID" value= '<%=PR_YID%>'readonly></td>
    <td hidden><input type="text"  style="background:none; border:none;" name="PR_PNUM" value= '<%=PR_PNUM%>'readonly></td>
    <td hidden><input type="text" style="background:none; border:none;" name="PR_SNUM" value= '<%=PR_SNUM%>'readonly></td>
    <td><input type="text" style="background:none; text-align:center; border:none;" name="P_PNAME" value= '<%=P_PNAME%>'readonly></td>
    <td hidden><input type="text" style="background:none; border:none;" name="DNAME" value= '<%=DNAME%>'readonly></td>
    <td hidden><input type="text"  style="background:none; border:none;"name="SNAME" value= '<%=SNAME%>'readonly></td>
    <td><input type="text"  style="background:none; text-align:center; border:none;"name="PR_AMOUNT" value= '<%=PR_AMOUNT%>'readonly></td>
    <td ><input type="text"  style="background:none; text-align:center; border:none;"name="PR_START" value= '<%=PR_START%>'readonly></td>
    <td ><input type="text"  style="background:none; text-align:center; border:none;"name="PR_END" value= '<%=PR_END%>'readonly></td>
    <td hidden><input type="text"  style="background:none; border:none;"id="qq" value= '<%=P_AMOUNT%>'  readonly></td>
    <td hidden><input type="text" style="background:none; border:none;" id="qqq" value= '<%=PR_AMOUNT%>'  readonly></td>
    <td hidden><input type="text"  style="background:none; border:none;"id="w"  name="w" readonly></td>
    <td hidden><input type="text"  style="background:none; border:none;"id="P_SNUM"  name="P_SNUM" value="<%=P_SNUM%>" readonly></td>
    <td>
    <%
        if(PR_CANCEL.equals("대여중")){
%>
    
    <button type="submit" class="buttonl" style=" position:relative; left:-20px;">반납</button> 
   
    <%}
    %>
  </form>

<% if(PR_CANCEL.equals("대여중")){
  
  %>

  <script type="text/javascript">
    function deyu(){
      window.open("Rental_List.jsp?PR_YID=<%=PR_YID%>&P_SNUM=<%=P_SNUM%>&PR_PNUM=<%=PR_PNUM%>&PR_SNUM=<%=PR_SNUM%>&P_PNAME=<%=P_PNAME%>&PR_AMOUNT=<%=PR_AMOUNT%>&PR_START=<%=PR_START%>", "bannap", "width=1050px, height=550px")
    }
</script>
     <button type="submit" class="buttonl2"  style=" position:relative; top:-26px;left:30px;" Onclick="location='Rental_List.jsp?PR_YID=<%=PR_YID%>&P_SNUM=<%=P_SNUM%>&PR_PNUM=<%=PR_PNUM%>&PR_SNUM=<%=PR_SNUM%>&P_PNAME=<%=P_PNAME%>&PR_AMOUNT=<%=PR_AMOUNT%>&PR_START=<%=PR_START%>'">대여증</button> 
     
      
     <%}
     %>

     <% if(PR_CANCEL.equals("반납")){
      %>
      <script type="text/javascript">
        function bannap(){
          window.open("Rental_BanList.jsp?P_SNUM=<%=P_SNUM%>&PR_PNUM=<%=PR_PNUM%>&PR_SNUM=<%=PR_SNUM%>&P_PNAME=<%=P_PNAME%>&PR_AMOUNT=<%=PR_AMOUNT%>&PR_START=<%=PR_START%>", "bannap", "width=1050px, height=550px")
        }
        </script>
         <button type="submit" class="buttonl" style=" position:relative;" Onclick="location='Rental_BanList.jsp?P_SNUM=<%=P_SNUM%>&PR_PNUM=<%=PR_PNUM%>&PR_SNUM=<%=PR_SNUM%>&P_PNAME=<%=P_PNAME%>&PR_AMOUNT=<%=PR_AMOUNT%>&PR_END=<%=PR_END%>'">반납증</button> 
         <%}
         %>
  </td>
</tr>
<script>
  

  var str1 = document.getElementById("qq").value;
  var str2 = document.getElementById("qqq").value;
 document.getElementById('w').value = parseInt(Number(str1) + Number(str2))
 
 
 </script>


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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">

</script> 
<script>

$(function(){
	if(document.getElementById("bb") = "수령 완료"){
		
		document.getElementById("a_div").style.display = "";
	}else{//조건 1이 아닐떄

        document.getElementById("a_div").style.display = "none";
	}
})

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
