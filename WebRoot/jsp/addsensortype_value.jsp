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
   String roomtype=request.getParameter("type");
   //System.out.println(roomtype);
    int x=0;
  // String name=request.getParameter("name");
  // request.getAttribute("room_type");
   //String name_type=request.getParameter("type");
    try
    
    {
    
    Connection connection=ConnectDatabase.getConnection();
   
    String owner_id="1";
    String list[]=request.getParameterValues("appliance");
   
    Statement stm=connection.createStatement();
    //String quString1="insert into energy_room (room_type, owner_id, date_time) VALUES ('"+name_type+"','"+owner_id+"',sysdate())  ";
   // System.out.println(quString1);
   // System.out.println("test document"+roomtype+"second value" +roomtype);
   // stm.executeUpdate(quString1);
   
  for(int i=0;i<list.length;i=i+1)
  {
  
  String quString="insert into sensor_type (sensor_type_name, sensor_addon) VALUES ('"+list[i]+"',sysdate())  ";
  //System.out.println(quString);
  //System.out.println("test document"+list[i]+"second value" +list[i+1]+"3rd value" +list[i+2]+"4th value" +list[i+3]+"5th value" +list[i+4]+"6th value" +list[i+5]);
  x= stm.executeUpdate(quString);
 // System.out.println(x);
   
  }
  if(x==1)
    {
    response.sendRedirect("addsensor_type.jsp");
    }
    
    
    else{
     
    }
  
   }
    catch(Exception e)
    {
     response.sendRedirect("registration.jsp");
    e.printStackTrace();
   }
  
    
  //  try
    
   // {
   // Connection connection=ConnectDatabase.getConnection();
    
   // String quString="insert into energy_user (email, password, customer_type, gender, name, mobile, product_type, place_name, address) VALUES ('"+email+"','"+password+"','"+customer_type+"','"+gender+"','"+name+"','"+mobile+"','"+product_type+"','"+place_name+"','"+address+"')  ";
   // Statement stm=connection.createStatement();
   // int df=stm.executeUpdate(quString);
   // if(df==1)
   // {
  //  response.sendRedirect("registration.jsp");
  //  }
    
    
  //  else{
  //    response.sendRedirect("registration.jsp");
  //  }}
 //   catch(Exception e)
 //   {
 //   e.printStackTrace();
 //   }
    
    
    
    
    
    
    
    
     %>
    
  </body>
</html>
