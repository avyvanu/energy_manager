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
   String s_name=request.getParameter("s_name");
   String s_type=request.getParameter("s_type");
   String s_id=request.getParameter("s_id");
        
        
   System.out.print("s_name="+s_name);
   System.out.print("s_type="+s_type);
    System.out.print("s_id="+s_id);
  //  System.out.print("description="+description+"specification="+specification+"min_op="+min_op+"max_op="+max_op+"machine_id="+machine_id);
    int x=0;
  // String name=request.getParameter("name");
  // request.getAttribute("room_type");
   //String name_type=request.getParameter("type");
    try
    
    {
    
    Connection connection=ConnectDatabase.getConnection();
   
  //  String owner_id="1";
    //String list[]=request.getParameterValues("appliance");
   
    Statement stm=connection.createStatement();
    //String quString1="insert into energy_room (room_type, owner_id, date_time) VALUES ('"+name_type+"','"+owner_id+"',sysdate())  ";
   // System.out.println(quString1);
   // System.out.println("test document"+roomtype+"second value" +roomtype);
   // stm.executeUpdate(quString1);
   String quString2="select sensor_type_id from sensor_type where sensor_type_name='"+s_type+"'";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
    //    int machine_id =d.getInt(1);
         int sensor_type_id=d2.getInt(1);

  
  String quString="update  sensor_master set sensor_name ='"+s_name+"',sensor_type_id='"+sensor_type_id+"' where sensor_id='"+s_id+"' ";
  System.out.println(quString); 
  //System.out.println("test document"+list[i]+"second value" +list[i+1]+"3rd value" +list[i+2]+"4th value" +list[i+3]+"5th value" +list[i+4]+"6th value" +list[i+5]);
  x= stm.executeUpdate(quString);
 // System.out.println(x);
   
  
  if(x==1)
    {
    %>
    
    <%
    
    //response.sendRedirect("machine_profile.jsp?mid="+machine_id);
    }
    
    
    else{
     
    }
  
   } }
    catch(Exception e)
    {
     response.sendRedirect("jsp/registration.jsp");
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
