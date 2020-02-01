<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="util.SMSFunction"%>
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
    
    String email=request.getParameter("sEmail");
    String password=request.getParameter("password");
    String name=request.getParameter("myname");
    //String name_type=request.getParameter("name_type");
    //String place_name=request.getParameter("place_name");
    String mobile=request.getParameter("mobile");
    String phone=request.getParameter("phone");

    
 
    
    
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select COUNT(s4im_email) from s4im_user where s4im_email='"+email+"' ";
    Statement stm1=connection.createStatement();
    //int df=stm.executeUpdate(quString);
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {
      
    // System.out.println("test document"+ d.getString(1));
     String count=d.getString(1);
     int aInt = Integer.parseInt(count);
    //  System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
    String message ="Email already exists.";
    session.setAttribute("Erromessage",message);
    session.setAttribute("name",name);
    session.setAttribute("email",email);
    session.setAttribute("mobile",mobile);
    session.setAttribute("phone",phone);
    response.sendRedirect("registration.jsp");
   
    }
      
    }



    
    String quString="insert into s4im_user (s4im_email, s4im_password,s4im_name, s4im_mobile, s4im_phone) VALUES ('"+email+"','"+password+"','"+name+"','"+mobile+"','"+phone+"')  ";
    Statement stm=connection.createStatement();
    int df=stm.executeUpdate(quString);
    if(df==1)
    {
    SMSFunction.sendSMS(mobile,password,email);
    response.sendRedirect("success_to_login.jsp");
    }
    
    
    else{
      response.sendRedirect("registration.jsp");
    }}
    catch(Exception e)
    {
    e.printStackTrace();
    }
    
    
    
    
    
    
    
    
     %>
    
    
    
  </body>
</html>
