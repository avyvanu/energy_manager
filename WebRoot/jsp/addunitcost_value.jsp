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
    
    <title>My JSP 'addroom_value.jsp' starting page</title>
    
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
   //String roomtype=request.getParameter("type");
   //System.out.println(roomtype);
    int x=0;
    int y=0;
  // String name=request.getParameter("name");
  // request.getAttribute("room_type");
   //String name_type=request.getParameter("type");
    try
    
    {
    
    Connection connection=ConnectDatabase.getConnection();
   
    String owner_id="1";
    String unitcost=request.getParameter("unitcost");
   
   
    Statement stm=connection.createStatement();
    //String quString1="insert into energy_room (room_type, owner_id, date_time) VALUES ('"+name_type+"','"+owner_id+"',sysdate())  ";
   // System.out.println(quString1);
   // System.out.println("test document"+roomtype+"second value" +roomtype);
   // stm.executeUpdate(quString1);
   
 
  String quString="insert into unitcost_master (unitcost, addon) VALUES ('"+unitcost+"',now())  ";
  //System.out.println(quString);
  x= stm.executeUpdate(quString);
   
  if(x==1)
    {
    response.sendRedirect("unit_cost.jsp");
    }
    
   }
    catch(Exception e)
    {
     response.sendRedirect("registration.jsp");
    e.printStackTrace();
   }
  
 
    
     %>
     

    
    
  </body>
</html>
