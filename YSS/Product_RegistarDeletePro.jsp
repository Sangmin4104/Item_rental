<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%@ page import="java.sql.*"%>
<% 
	request.setCharacterEncoding("utf-8");
  
 
     
   String P_PNAME = request.getParameter("P_PNAME");
   String P_AMOUNT = request.getParameter("P_AMOUNT");
   String P_SNUM = request.getParameter("P_SNUM");
   String SNAME = request.getParameter("SNAME");
   String P_PNUM = request.getParameter("P_PNUM");
 
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>차량 추가 </title>
</head>

<body>

<%
 String sql="";
	Connection conn = null;
	PreparedStatement pstmt = null;
 

 try{
    String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
    String dbId="c##gnarly";
    String dbPass="1234";
  
    Class.forName("oracle.jdbc.driver.OracleDriver"); 
    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );

            sql= "update prod set P_STATE = 'X' WHERE P_PNUM=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,P_PNUM);
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
	alert("물품을 삭제하였습니다.");
    location.href="MainPage.jsp";
</script>
</html>