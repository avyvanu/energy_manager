<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'edit_location_pro.jsp' starting page</title>
    
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
  //List list=new ArrayList();
   String m_name=request.getParameter("m_name");
   String location_id=request.getParameter("location_id");
   
        
        
     int x=0;
     try
    
    {
    
    Connection connection=ConnectDatabase.getConnection();
   
    
    Statement stm=connection.createStatement();
    
 
  
  String quString="update  machine_location_master set location_name ='"+m_name+"' where location_id='"+location_id+"' ";
 System.out.println(quString); 
   x= stm.executeUpdate(quString);
   
  
  if(x==1)
    {
    %>
    
    <%
    
    response.sendRedirect("redirecttoaddloc.jsp");
    }
    
    
    else{
     
    }
  
   }
    catch(Exception e)
    {
     response.sendRedirect("registration.jsp");
    e.printStackTrace();
   }
   %>
    This is my JSP page. <br>
  </body>
</html>
