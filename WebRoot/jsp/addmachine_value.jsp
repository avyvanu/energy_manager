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
   String roomtype=request.getParameter("type");
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
    String m_name=request.getParameter("m_name");
   String model=request.getParameter("model");
   String description=request.getParameter("description");
   String specification=request.getParameter("specification");
   String min_op=request.getParameter("min_op");
   String max_op=request.getParameter("max_op");
    String list[]=request.getParameterValues("appliance");
   
    Statement stm=connection.createStatement();
    //String quString1="insert into energy_room (room_type, owner_id, date_time) VALUES ('"+name_type+"','"+owner_id+"',sysdate())  ";
   // System.out.println(quString1);
   // System.out.println("test document"+roomtype+"second value" +roomtype);
   // stm.executeUpdate(quString1);
   
 
  String quString="insert into machine_master (machine_name, machine_location, machine_model, machine_description, machine_specification, machine_min_output, machine_max_output) VALUES ('"+m_name+"','"+roomtype+"','"+model+"','"+description+"','"+specification+"','"+min_op+"','"+max_op+"')  ";
  //System.out.println(quString);
 //System.out.println("test document"+list[i]+"second value" +list[i+1]+"3rd value" +list[i+2]+"4th value" +list[i+3]+"5th value" +list[i+4]+"6th value" +list[i+5]+"7th value" +list[i+6]+"8th value" +list[i+7]);
  x= stm.executeUpdate(quString);
 // System.out.println(x);
      
    
   
  
    //String list[]=request.getParameterValues("appliance");
   
    //Statement stm=connection.createStatement();
     String qu3="select MAX(machine_id),machine_location from machine_master";
  
     //Statement stm=connection.createStatement();
   
     ResultSet d5=stm.executeQuery(qu3);
       if(d5.next())
       {
    //    int machine_id =d.getInt(1);
         int m_id=d5.getInt(1);
          int l_id=d5.getInt(2);
        
 
  for(int j=0;j<list.length;j=j+2)
  {
   String quString2="select sensor_type_id from sensor_type where sensor_type_name='"+list[j+1]+"'";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
    //    int machine_id =d.getInt(1);
         int sensor_type_id=d2.getInt(1);
     
 
  String qu6="insert into sensor_master (sensor_type_id, sensor_name, machine_id,addon) VALUES ('"+sensor_type_id+"','"+list[j]+"','"+m_id+"',now())  ";
 // System.out.println(quString);
 //System.out.println("test document"+list[i]+"second value" +list[i+1]);
  x= stm.executeUpdate(qu6);
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
  } }
  if(y==1)
    {
   //response.sendRedirect("success_to_sensor.jsp");
    //String message ="You have successfuly added the sensors.";
    //session.setAttribute("Erromessage",message);
  // response.sendRedirect("machine_profile.jsp?mid="+m_id);
    }
    
    
    else{
     
    }
  
   
 
  if(x==1)
    {
    response.sendRedirect("addmachine.jsp");
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
