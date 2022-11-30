<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%@ page import="java.sql.*"%>
<% 
	request.setCharacterEncoding("utf-8");
  
  String realFolder = "";
  String P_IMAGES = "";
  int maxSize = 1024*1024*5;
  String encType = "UTF-8";
  String savefile = "img";
  ServletContext scontext = getServletContext();
 
  realFolder = request.getRealPath("YSS/p_img");
   MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
     
   String P_PNAME = multi.getParameter("P_PNAME");
   String P_AMOUNT = multi.getParameter("P_AMOUNT");
   String P_SNUM = multi.getParameter("P_SNUM");
 
 
   Enumeration<?> files = multi.getFileNames();
      String file1 = (String)files.nextElement();
      P_IMAGES = multi.getFilesystemName(file1);
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

            sql= "insert into PROD(P_PNUM,P_PNAME,P_AMOUNT,P_RENTAL,P_SNUM,P_IMAGES,P_STATE) values (ppnum.nextval,?,?,'대여가능',?,?,'O')";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,P_PNAME);
            pstmt.setString(2,P_AMOUNT);
            pstmt.setString(3,P_SNUM);
            pstmt.setString(4,P_IMAGES);
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

	alert("물품을 등록하였습니다.");
    location.href="MainPage.jsp";
</script>
</html>