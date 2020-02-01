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
	<meta http-equiv="refresh" content="20" />   

		<!-- Type your title here -->
		<title>ADD MACHINE</title>
		
        <!-- Load styles -->
         <link type="text/css" rel="stylesheet" href="css/contentstyle.css"/>
	    <link type="text/css" rel="stylesheet" href="css/subpage.css"/>
        <script type="text/javascript" src="popup.js"></script>
        <script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
       

 

		

	</head>
	<body>
	<%
	
		 
     int a = 1;
     String machine_location="";
     String location="";
     int machine_id=0;
     String machine_name="";
     String machine_model="";
     String machine_description="";
     
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from machine_master where  machine_id='"+request.getParameter( "mid" )+"' and machine_status=0 ";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     if (d.next()) {
 
      machine_id =d.getInt(1);
      machine_name=d.getString(2);
      machine_location=d.getString(3);
      machine_model=d.getString(4);
      machine_description=d.getString(5);
     
     int aInt = machine_id;
     
     
      String quString2="select * from machine_location_master where location_id='"+machine_location+"' and status=0 ";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
          location=d2.getString(2);
     
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
  
   
    //response.sendRedirect("registration.jsp");
   
     }}
    a++;  
    }



    
   
    
    
   }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    
    
    
    
	
	
	String mat_status="1";
					String test=(String)session.getAttribute("user_email");
					//System.out.println(test);
                    if(test !=null){
					
					}else
					{
					response.sendRedirect("login.jsp");
					
					}
    %>
    				
		<% 			 Connection connection1=ConnectDatabase.getConnection();
    
          
         
    String qu1="SELECT * FROM energy_data where rf_node_id='"+request.getParameter( "mid" )+"' ORDER BY id DESC LIMIT 1";
    Statement stm_n=connection1.createStatement();
   
    ResultSet d_1=stm_n.executeQuery(qu1);
     if(d_1.next())
       {

      mat_status=d_1.getString(6);
      
   
   
   
  
   
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
						<li class="active" id="home"><a href="addmachine.jsp">Add Machine</a></li>
					<li id="contact" class="active"><a href="view_machine_list.jsp">View Machine</a></li>
					
					<li id="contact" class="active2"><a href="live_dashboard.jsp">Live Dashboard</a></li>
					<li id="contact" class="active"><a href="reportbysensor_type.jsp">Report</a></li>
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>
				</ul>
					<div style="height: 20px;"></div>
					
					<table style="width:640px;">
					
					<tr><td>
					
					
					<div id="tabs-3" style="width:640px;">
					
					<form method="post" name="" action="">	

<div id="chart5" class="plot" style=" text-align: center;">
<div>
<% 

if(mat_status.equals("0"))
    {
    mat_status="YES";
    %>
    <img src="images/yes_1.png" />
    <% 
    
    }else{
     mat_status="NO";
     %>
    <img src="images/no_2.png" />
    <% 
    }





%>



</div>
<div style="text-align:center;color: #999999;font-size: 1em;" class="jqplot-meterGauge-label">Raw Material Status Meter</div>
</div>

   
</form>
 		
	</div>
			
					
					</td></tr>
					<tr><td>
					<table style="width: 680px;">
					
					<tbody><tr><td>
					
					<div style="width: 680px;" id="tabs-3">

  	 
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tbody><tr>
    <td class="gridtd"><div style="max-height: 350px; overflow: auto;">
      <table width="100%" cellspacing="1" cellpadding="4" border="0">
    <tbody><tr>
       <!--  <td class="white2" style="width:55px;"><b>Select</b></td> -->
		<td class="white2"><b>Machine Name</b></td>
		<td id="" class="white2"><b>Model</b></td>
		<td id="" class="white2"><b>Description</b></td>
		<td id="" class="white2"><b>Location</b></td>
		
		<td id="" class="white2"><b>Raw Material Status</b></td>
		
    </tr>
   
      <tr id="1row">
  <!-- <td id="" classname="white" class="white">
   <input type="radio" onclick="getid(this);" name="chk" id="chk" value="1"/></td> --> 
   <td classname="white" class="white" id=""><a href="machine_profile.jsp?mid=<%=machine_id%>"><%=machine_name%></a>
   </td>
   <td classname="white" class="white" id=""><%=machine_model%>
   </td>
   <td classname="white" class="white" id=""><%=machine_description%>
  </td>
   
   <td classname="white" class="white" id=""><%=location%>
  </td>
    
    <td classname="white" class="white" id=""><%=mat_status%>
 </td>
   </tr>
   
    
   
    
    
    

    </tbody></table>
    </div>
    </td>
</tr>
 <!--<tr>
  <input type="button" value="" onclick="javascript:parent.content.Popup.showModal('modal2',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="add_buttons" /> 
  <td align="right" colspan="2" class="form2"> <input type="button" value="" onclick="Popup.showModal('modal',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="edit_buttons" />&nbsp;&nbsp;&nbsp;<input type="button" value="" class="del_buttons" onclick="getCheckedRadios();return false;"  />
</td><td></td>
  </tr>-->
</tbody></table>
 <!--  <div align="center"><p style="margin-top:0px;" class="reply" >
					<a  onclick="javascript:submit_form();" style="text-align: center;" title="Submit">Submit</a>
					</p></div>-->
	</div>
					
					</td></tr>
					<tr><td>
					
					</td><td>
					
					</td>
					</tr>
					
					
					</tbody></table>
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