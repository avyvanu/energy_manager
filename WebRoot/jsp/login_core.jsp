<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert_reg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
    
    <%
    
    String email=request.getParameter("user_email");
    String password=request.getParameter("password");
  
      // System.out.println("test email"+email+" password value" +password);
    
 
    
    
    boolean status=false;
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
    String quString="SELECT s4im_email, s4im_password, s4im_name FROM s4im_user where s4im_email='"+email+"' and s4im_password='"+password+"' ";
    Statement stm=connection.createStatement();
  
    ResultSet rs=stm.executeQuery(quString);
   
 status=rs.next();
 String username=rs.getString(3);
    if(status==true)
    
    {
    session.setAttribute("user_email", request.getParameter("user_email"));
    session.setAttribute("username", username);
    response.sendRedirect("addmachine.jsp");
    
    
    }
    
    //int df=stm.executeUpdate(quString);
 
    if(status==false)
    {
    String message ="Invalid Email/Password";
    session.setAttribute("Erromessage",message);
    response.sendRedirect("login.jsp");
    
    }
    
    
    else{
      
    }}
    catch(Exception e)
    {
    e.printStackTrace();
    }
    
    
    
    
    
    
    
    
     %>
    
    
    
  </body>
</html>
