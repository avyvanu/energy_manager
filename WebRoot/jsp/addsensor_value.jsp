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
   String m_id=request.getParameter("m_id");
   String l_id=request.getParameter("l_id");
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
 
  for(int i=0;i<list.length;i=i+2)
  {
   String quString2="select sensor_type_id from sensor_type where sensor_type_name='"+list[i+1]+"'";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
    //    int machine_id =d.getInt(1);
         int sensor_type_id=d2.getInt(1);
     
 
  String quString="insert into sensor_master (sensor_type_id, sensor_name, machine_id,addon) VALUES ('"+sensor_type_id+"','"+list[i]+"','"+m_id+"',now())  ";
 // System.out.println(quString);
 System.out.println("test document"+list[i]+"second value" +list[i+1]);
  x= stm.executeUpdate(quString);
 // System.out.println(x);
 
 
  String qu1="select MAX(sensor_id) from sensor_master ";
  
     Statement stm3=connection.createStatement();
   
     ResultSet d3=stm3.executeQuery(qu1);
       if(d3.next())
       {
         String sensor_id=d3.getString(1);
         
 // System.out.println(x);
   String qu="insert into relation (machine_id,location_id,sensor_id) VALUES ('"+m_id+"','"+l_id+"','"+sensor_id+"')  ";
   stm.executeUpdate(qu);
   }
  } 
  }
  if(x==1)
    {
   //response.sendRedirect("success_to_sensor.jsp");
    //String message ="You have successfuly added the sensors.";
    //session.setAttribute("Erromessage",message);
   response.sendRedirect("machine_profile.jsp?mid="+m_id);
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
    
  </body>
</html>
