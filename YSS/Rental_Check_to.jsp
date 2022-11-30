<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
	request.setCharacterEncoding("utf-8");
  
    String w =request.getParameter("w");
    String PR_CANCEL =request.getParameter("PR_CANCEL");
    String PR_YID =request.getParameter("PR_YID");
    String PR_PNUM =request.getParameter("PR_PNUM");
    String PR_SNUM = request.getParameter("PR_SNUM");
    String DNAME = request.getParameter("DNAME");
    String SNAME = request.getParameter("SNAME");
    String P_PNAME = request.getParameter("P_PNAME");
    String PR_AMOUNT =request.getParameter("PR_AMOUNT");
    String PR_START = request.getParameter("PR_START");
    String PR_END = request.getParameter("PR_END");
    

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>연성대학교 비품대여홈페이지</title>
</head>
<body>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
 try{
    String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
    String dbId="c##gnarly";
    String dbPass="1234";
  
    Class.forName("oracle.jdbc.driver.OracleDriver"); 
    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );

            String sql= "update prod_doc set PR_END = (to_date(sysdate,'yy.mm.dd')), PR_CANCEL = '반납' where pr_yid = ? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,PR_YID);
            pstmt.executeUpdate();

            sql= "update prod set p_amount = ? where p_pnum = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,w);
            pstmt.setString(2,PR_PNUM);
            pstmt.executeUpdate();




  }catch(Exception e){ 
    out.print("오류가 발생하였습니다. 다시 시도해 주시기 바랍니다");
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

	alert("반납이 완료되었습니다.");
    location.href="MainPage.jsp";
</script>








</html>