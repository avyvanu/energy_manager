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
   String type_id=request.getParameter("type_id");
   
        
        
     int x=0;
     try
    
    {
    
    Connection connection=ConnectDatabase.getConnection();
   
    
    Statement stm=connection.createStatement();
    
 
  
  String quString="update  sensor_type set sensor_type_name ='"+m_name+"' where sensor_type_id='"+type_id+"' ";
 System.out.println(quString); 
   x= stm.executeUpdate(quString);
   
  
  if(x==1)
    {
    %>
    
    <%
    
    response.sendRedirect("redirect_to_addsensor_type.jsp");
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
