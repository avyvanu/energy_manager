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
		<!--<meta http-equiv="refresh" content="10" />     -->

		<!-- Type your title here -->
		<title>GRAPHICAL REPORT PANEL</title>
		
        <!-- Load styles -->
         <link type="text/css" rel="stylesheet" href="css/contentstyle.css"/>
	    <link type="text/css" rel="stylesheet" href="css/subpage.css"/>
        <script type="text/javascript" src="popup.js"></script>
        <script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
<script language="javascript">
	
		
	
 function displaymachine(obj) {
	
txt = obj.options[obj.selectedIndex].value;
txt2 = obj.options[obj.selectedIndex].text;
document.getElementById("mid").value=txt;
document.getElementById("mname").value=txt2;

if (txt !='0') {
		
		 window.location.href="dashboard_machine_pro.jsp?mid="+txt+"&mname="+txt2;
		 
		 return false;
		 }
		




 return false;
 }
 
 
 
 </script>
	

	</head>
	<body>

    

<div id="chooser">
 
</div>

        <div id="main">
        	
            <!-- Name of your company -->
			<div class="company_name1"></div>
            <div class="company_name">INTELLIGENT INDUSTRIAL AUTOMATION</div>
            <!-- END /Name of your company -->

			<div class="main_box">
			
    	        <!-- Countdown -->
				
			
				<!-- Text content -->
				<div id="content">

		
					<div>
					
					<div style="text-align:center;width:640px"><h1>GRAPHICAL REPORT  PANEL</h1></div>
					<div class="member_count" style="float: left;"></div><div class="member_count">
					<%
					String name=(String)session.getAttribute("username");
					//System.out.println(name);
                    if(name !=null){
					out.print(name);
					}
    %>
				</div>
						<div class="count" id="countdown"></div>
						<ul  id="main_menu">
						<li class="active" id="home"><a href="addmachine.jsp">Add Zone</a></li>
					<li id="contact" class="active"><a href="view_machine_list.jsp">View Zone</a></li>
					
					<li id="contact" class="active2"><a href="live_dashboard.jsp">Live Dashboard</a></li>
					<li id="contact" class="active"><a href="reportbysensor_type.jsp">Report</a></li>
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>
				</ul>
					<div style="height: 20px;"></div>
					
				<table style="width: 640px;">
					
					<tbody><tr><td>
					
					
					<div style="width: 240px;" id="tabs-3">
  	 
<table width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-left: 180px; margin-top: 10px;">
<tbody><tr><td>
					<p>Zone:<span style="color: red;">*</span></p>
					</td>
					   <td><input type="hidden" value="type" id="type" name="type"/>
        <input type="hidden" value="0" id="total_percentage" name="total_percentage"/>
					<div class="select">
            <select  name="machine_list" id="machine_list" onchange="displaymachine(this)">
              
              <option value="0">Select</option>
              
                     
     <%
  int a = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select DISTINCT machine_id from sensor_master where  status=0";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {

     int machine_id =d.getInt(1);
     //String location_name=d.getString(2);
     String qu="select * from machine_master where  machine_id='"+machine_id+"' and machine_status=0 ";
    Statement stmu=connection.createStatement();
   
    ResultSet du=stmu.executeQuery(qu);
     if (du.next()) {
     
       String machine_name=du.getString(2);
     
    
     
     int aInt = machine_id;
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %>  <option value="<%out.print(machine_id);%>"><%out.print(machine_name);%></option> 
   
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
    
                  
                  
                 
   
   
    
          
              
            </select>
            
            
             <input type="hidden" value="0" id="mid" name="mid"/>
              <input type="hidden" value="0" id="mname" name="mname"/>
            
          </div>
					</td>
				
				
					
            
            
        
       
            
          
				</tr>

</tbody></table>



	</div>
			
					</td></tr>
					<tr><td>
					
					</td><td>
					
					</td>
					</tr>
					
					
					</tbody></table>
						
						
						
					    
				
  
					</div>
					

					</div>
                
                </div>
              <div class="shadow_main"></div>
			

			</div>

		
		

			
		
	</body>
</html>