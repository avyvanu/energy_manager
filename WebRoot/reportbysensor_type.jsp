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
		<title>ADD MACHINE</title>
		
        <!-- Load styles -->
         <link type="text/css" rel="stylesheet" href="css/contentstyle.css"/>
	    <link type="text/css" rel="stylesheet" href="css/subpage.css"/>
        <script type="text/javascript" src="popup.js"></script>
        <script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
        <!-- Load scripts -->
		<script language="javascript">
		
		function del_location()
		{
		var r=confirm("Are you sure ? you want to delete this location  and its all records. ");
if (r==true)
  {
  return true;
  }
else
  {
 return false;
  }
		//alert("Are you sure ? you want to delete this machine and its all records. ");
		//return true;
		}
	
		function submit_form()
		{
		document.forms["myform"].submit();
		}
		function getid(obj) {
		document.getElementById("location_delete").value=obj.value;
		document.getElementById('edit_location_frame').src='edit_sensor_type.jsp?location_id='+obj.value;
		//alert(obj.value);
		}
		
	function displaypolicy(obj) {
	
txt = obj.options[obj.selectedIndex].value;

//document.getElementById("approve").style.display = '';
//document.getElementById("edit").style.display = '';
if (txt !='') {
document.getElementById("type").value=document.getElementById("room_type").value ;
document.getElementById("room_type").disabled=true ;

document.getElementById("tabs-3").style.display = '';
} }</script>
		
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
					String test=(String)session.getAttribute("user_email");
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
            <div class="company_name">INTELLIGENT INDUSTRIAL AUTOMATION</div>
            <!-- END /Name of your company -->

			<div class="main_box">
			
    	        <!-- Countdown -->
				
			
				<!-- Text content -->
				<div id="content">

		
					<div>
					
					<div style="text-align:center;width:640px"><h1>REPORT PANEL</h1></div>
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
						<li class="active" id="home"><a href="addmachine.jsp">Add Machine</a></li>
					<li id="contact" class="active"><a href="view_machine_list.jsp">View Machine</a></li>
					
					<li id="contact" class="active"><a href="live_dashboard.jsp">Live Dashboard</a></li>
					<li id="contact" class="active2"><a href="reportbysensor_type.jsp">Report</a></li>
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>
				</ul>
					<div style="height: 20px;"></div>
					
					<table style="width:640px;">
					
					<tr><td>
					
					
					<div id="tabs-3" style="width:640px;">
					
					<form method="post" name="" action="">	
 
<table width="100%"  border="0" cellspacing="0" cellpadding="0" id="dd" style="display: none;">
<tr>
    <td class="gridtd"><div style="max-height: 250px;overflow: auto">
      <table  width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
         
		<td class="white2"><b>Sensor Type</b></td>
		
        
    </tr>
   
    <%
  int at = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from sensor_type where status=0  ";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {

     int location_id =d.getInt(1);
    
     String location_name=d.getString(2);
  
    
     int aInt = location_id;   
       
     
    
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %> 
  <script type="text/javascript"> document.getElementById("dd").style.display = ''; </script>
   <tr id="<%out.print(at);%>row">
  
   <td id="<%out.print(at);%>td" class="white">
   <a href="reportby_machine.jsp?tid=<%out.print(location_id);%>&tname=<%out.print(location_name);%>"><%out.print(location_name);%></a>
   </td>
  
  
   </tr>
   <% 
   
    //response.sendRedirect("registration.jsp");
   
    }
    at++;  
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