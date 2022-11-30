<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%@ page import="java.sql.*"%>
<% 
	request.setCharacterEncoding("utf-8");
     
   String SNUM = request.getParameter("SNUM");
   String SHEAD = request.getParameter("SHEAD");
 
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

            sql= "update id set SHEAD = 0 WHERE SNUM = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,SNUM);
            pstmt.executeUpdate();
    

    response.sendRedirect("A_HeadListForm.jsp");

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
</html>