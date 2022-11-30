<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");

String SNUM = String.valueOf(session.getAttribute("SNUM"));
int P_PNUM =Integer.parseInt(request.getParameter("p_pnum")); 
String sname = request.getParameter("sname");
String dname = request.getParameter("dname");
String p_pname = request.getParameter("p_pname");
String amount = request.getParameter("amount");
String d1 = request.getParameter("d1");
String d2 = request.getParameter("d2");
String k = request.getParameter("k");
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
  //ResultSet rs = null;
  Connection conn2 = null;
  PreparedStatement pstmt2 = null;


   try{  
    String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl"; // 건국, 재열 = xe
    String dbId="c##gnarly";
    String dbPass="1234";

    Class.forName("oracle.jdbc.driver.OracleDriver"); 
    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass );
    
    String sql= "insert into PROD_DOC (PR_PNUM, PR_SNUM,PR_AMOUNT,PR_START,PR_END, PR_CANCEL,PR_YID) values (?,?,?,?,?,'대기',?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1,P_PNUM);
    pstmt.setString(2,SNUM);
    pstmt.setString(3,amount);
    pstmt.setString(4,d1);
    pstmt.setString(5,d2);
    pstmt.setString(6,k);
    pstmt.executeUpdate();
    
      sql= "insert into C_CHECK (C_SNUM,C_PNUM, C_CHECK,C_START,C_CDATE,C_YID) values (?,?,'대기',(to_date(sysdate,'yy.mm.dd')),'99/12/31',?)";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1,SNUM);
      pstmt.setInt(2,P_PNUM);
      pstmt.setString(3,k);
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

	alert("예약이 완료되었습니다.");
    location.href="MainPage.jsp";
</script>
</html>