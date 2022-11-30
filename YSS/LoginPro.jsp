<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
 
int sNum =Integer.parseInt(request.getParameter("snum"));

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>F5 - Sign In</title>
<link rel="stylesheet" href="../assets/bootstrap-5.1.1/css/bootstrap.min.css">
</head>
<body>
<%
  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;

  PreparedStatement pstmt2 = null;
  ResultSet rs2 = null;

   try{  
    String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl"; // 건국, 재열 = xe
    String dbId="c##gnarly";
    String dbPass="1234";

    Class.forName("oracle.jdbc.driver.OracleDriver"); 
    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
    
    String sql= "select * from id where snum = ?";
    

    pstmt = conn.prepareStatement(sql);   
    pstmt.setInt(1, sNum);
    rs = pstmt.executeQuery();
    
    if(rs.next()){
        int Snum = rs.getInt("snum");
        String Dname = rs.getString("dname");
        String Sname = rs.getString("sname");

        if(sNum == 9999){ 
          session.setAttribute("SNUM", Snum);
         session.setAttribute("DNAME", Dname);
         session.setAttribute("SNAME", Sname);
         response.sendRedirect("AdminSubPage.jsp");
       } 

        else if(sNum == Snum){
          session.setAttribute("SNUM", Snum);
          session.setAttribute("DNAME", Dname);
          session.setAttribute("SNAME", Sname);
                response.sendRedirect("SubPage.jsp");
        } 
    }
  }catch(Exception e){ 
     e.printStackTrace();
  }finally{
     if(rs != null) 
       try{rs.close();}catch(SQLException sqle){}
     if(pstmt != null) 
       try{pstmt.close();}catch(SQLException sqle){}
     if(conn != null) 
       try{conn.close();}catch(SQLException sqle){}
  }
%>

</body>
</html>