<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Copyright 2010 deehec.com -->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />

		<!-- Type your title here -->
		<title></title>
		
        <!-- Load styles -->
         <link type="text/css" rel="stylesheet" href="css/contentstyle.css"/>
	    
        <script type="text/javascript" src="popup.js"></script>
        <script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
        <!-- Load scripts -->
		<script language="javascript">
	
		
		
		
		
		
	</script>
		
<!--[if gte IE 5]>
<style type="text/css">

.white {
background:repeat-x scroll left bottom #FFFFFF;
filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/grey-up.png' ,sizingMethod='scale');
}
.white2 {
background:repeat-x scroll left bottom #CDD6DD;
filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/grey-up.png' ,sizingMethod='scale');
}
</style>
<![endif]-->	
	</head>
	<body>
	<%
	
	String machine_location="";
	
					String test=(String)session.getAttribute("user_email");
					//request.getParameter( "mid" );
					//System.out.println(request.getParameter( "mid" ));
					//System.out.println(test);
                    if(test !=null){
					
					}else
					{
					response.sendRedirect("login.jsp");
					
					}
    %>

<div id="chooser">
 
</div>
		
        <div id="main">
        	
            <!-- Name of your company -->
			<div class="company_name1"></div>
            <div class="company_name">POWER MANAGER</div>
            <!-- END /Name of your company -->

			<div class="main_box">
			
    	        <!-- Countdown -->
				
			
				<!-- Text content -->
				<div id="content">

		
					<div>
					
					<div style="text-align:center;width:640px"><h1>Zone Detail View</h1></div>
						<div class="count" id="countdown"></div>
						<ul id="main_menu">
					<li class="active" id="home"><a href="addmachine.jsp">Add Zone</a></li>
					<li id="contact" class="active"><a href="view_machine_list.jsp">View Zone</a></li>
					<li id="contact" class="active2"><a href="live_dashboard.jsp">Live Dashboard</a></li>
					<li id="contact" class="active"><a href="reportbysensor_type.jsp">Report</a></li>
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>				</ul>
					<div style="height: 10px;"></div>
					
					<table style="width:680px;">
					<tr><td style="height: 10px;color:red" colspan="2" align="center">
			
			
			</td></tr>
					
		<% 			 Connection connection1=ConnectDatabase.getConnection();
    
          
         
    String qu1="select * from sensor_master where  machine_id='"+request.getParameter( "mid" )+"' and status =0 ";
    Statement stm_n=connection1.createStatement();
   
    ResultSet d_1=stm_n.executeQuery(qu1);
     if(d_1.next())
       {%>
			
			<% 
   
    //response.sendRedirect("registration.jsp");
   
     }else{
     %>
			<div id="warning" style="text-align:center;color:red;padding-top:10px;">
			This zone have no sensor, Please add at least one sensor to make this a valid zone .
			</div>
			<% 
     
     
     }
 %>
					<tr><td>
					
					<div id="tabs-3" style="width:680px;">

  
  
  
  <form method="post" name="" action="">	
  
 
  
  
  
  
  
   
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td class="gridtd"><div style="max-height: 250px;overflow: auto">
      <table  width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
       
		<td class="white2"><b>Zone Name</b></td>
	<!-- 	<td class="white2" id=""  ><b>Model</b></td> 
	    	<td class="white2" id=""  ><b>Specification</b></td>
	    	<td class="white2" id=""  ><b>Min.Output</b></td>
	 -->
		<td class="white2" id=""  ><b>Description</b></td>
	
		<td class="white2" id=""  ><b>Max.Consumption</b></td>
		<td class="white2" id=""  ><b>Location</b></td>
        
    </tr>
   
    <%
  int a = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from machine_master where  machine_id='"+request.getParameter( "mid" )+"' and machine_status=0 ";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {
 
     int machine_id =d.getInt(1);
     String machine_name=d.getString(2);
      machine_location=d.getString(3);
     String machine_model=d.getString(4);
     String machine_description=d.getString(5);
     String machine_specification=d.getString(6);
     String machine_min_output=d.getString(7);
     String machine_max_output=d.getString(8);
     int aInt = machine_id;
     
     
      String quString2="select * from machine_location_master where location_id='"+machine_location+"' and status=0 ";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
         String location=d2.getString(2);
     
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %> <tr id="<%out.print(a);%>row">
        
   <td  class="white" classname="white"><a id="m_name1" href="machine_profile.jsp?mid=<%out.print(machine_id);%>"><%out.print(machine_name);%></a>
   </td>
   <!-- <td id="model" class="white" classname="white"><%out.print(machine_model);%>
   </td>
    <td id="specification" class="white" classname="white"><%out.print(machine_specification);%>
  </td>
   <td id="min_op" class="white" classname="white"><%out.print(machine_min_output);%>
   </td>
   -->
   <td id="description" class="white" classname="white"><%out.print(machine_description);%>
   </td>
  
   <td id="max_op" class="white" classname="white"><%out.print(machine_max_output);%>
  </td>
   <td id="machine_location" class="white" classname="white"><%out.print(location);%>
   </td>
   </tr>
   <% 
   
    //response.sendRedirect("registration.jsp");
   
     }}
    a++;  
    }



    
   
    
    
   }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    
    
    
    
    
    
    
    
     %>
    
   
    
    
    

    </table>
    </div>
    </td>
</tr>

</table>
</form>

<form method="post" name="" action="">	


<div style="height: 10px;"></div>



<table width="100%"  border="0" cellspacing="0" cellpadding="0" id="dd" style="display: none;">
<tr>
    <td class="gridtd"><div style="max-height: 250px;overflow: auto">
      <table  width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
       
		<td class="white2"><b>Sensor Name</b></td>
		<td class="white2" id=""  ><b>Type</b></td>
		<td class="white2" id="" style="width:105px;" ><b>Live Dashboard</b></td>
        
    </tr>
   <a href="a.jsp">Energy Dashboard</a>
    <%
  int at = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from sensor_master where  machine_id='"+request.getParameter( "mid" )+"' and status=0  ";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {

     int sensor_id =d.getInt(1);
     String sensor_type_id=d.getString(2);
     String sensor_name=d.getString(3);
     String machine_id=d.getString(4);
    
     int aInt = sensor_id;   
        String quString2="select * from sensor_type where sensor_type_id='"+sensor_type_id+"' and status=0 ";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
         String location=d2.getString(2);
    
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %> 
   <script type="text/javascript"> document.getElementById("dd").style.display = ''; </script>
   <tr id="<%out.print(a);%>row">
 
   <td id="" class="white" classname="white"><a href="machine_profile.jsp?mid=<%=machine_id%>"><%=sensor_name%></a>
   </td>
   <td id="" class="white" classname="white"><%=location%>
   </td>
   <td id="" class="white" classname="white"  style="text-align: center;">
    
    <% 
   if(sensor_type_id.equals("1"))
    {
   %> 
   <a href="reportbygraph.jsp?mid=<%=machine_id%>&sid=<%=sensor_id%>">View</a>
   <% } else  if(sensor_type_id.equals("2")) {
   %> 
   <a href="power_status.jsp?mid=<%=machine_id%>&sid=<%=sensor_id%>">View</a>
   <%
   }else  if(sensor_type_id.equals("3")) {
   %> 
   <a href="raw_mat_status.jsp?mid=<%=machine_id%>&sid=<%=sensor_id%>">View</a>
   <%
   }
   %>
   
   
   </td>
  
   </tr>
   
   <% 
   
    //response.sendRedirect("registration.jsp");
   
    } }
    a++;  
    }



    
   
    
    
   }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    
    
    
    
    
    
    
    
     %>
    
   
    
    
    

    </table>
    </div>
    </td>
</tr>

</table> 
<div style="height: 10px;"></div>

</form>

	</div>
					
					</td></tr>
					<tr><td>
					
					</td><td>
					
					</td>
					</tr>
					
					
					</table>
						
						
						
						
					    
				
  
					</div>
					

					</div>
                
                </div>
              <div class="shadow_main"></div>
			

			</div>

		
		


			
		
	</body>
</html>