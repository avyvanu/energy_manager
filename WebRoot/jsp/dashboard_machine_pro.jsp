<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"><head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>Wifinity, Intelligent Enterprise  Management</title>
<META HTTP-EQUIV="CONTENT-LANGUAGE" CONTENT="EN"/>
<meta name="revisit-after" content="10 days" /> 
<meta name="robots" content="all" /> 
<meta name="audience" content="all" /> 
<meta name="author" content="Wifinity" /> 
<meta name="company" content="Wifinity Technology" /> 
<meta name="copyright" content="2010, Wifinity Technology " /> 
<meta name="publisher" content=" Wifinity " /> 
<meta name="distribution" content="global" /> 
<meta name="reply-to" content=" info@wifinitytech.com " /> 
<meta name="language" content="english" /> 
<meta name="content-language" content="en" />
<meta name="keywords" content="RFID, Wifinity, Wifinity, Wifinity technology, technologies, technology, wireless sensors, energy management, security management, power managment" />
<link rel="shortcut icon" href="../images/favicon.ico" />
<script type="text/javascript" src="Scripts/unitpngfix.js"></script> 
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" /> 
<link href="css/setting.css" rel="stylesheet" type="text/css" /> 
<script src="Scripts/maxheight.js" type="text/javascript"></script> 
<link rel="stylesheet" type="text/css" href="menu/ddlevelsmenu-base.css" />
<script type="text/javascript" src="Scripts/popup.js"></script>
        <script type="text/javascript" src="Scripts/content.js"></script>
        
        <script type="text/javascript" src="menu/ddlevelsmenu.js"> </script> 
        
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

<script language="javascript"> 
function fnclear(obj,val){
if(obj.value==val){
obj.value='';}
else if(obj.value=='') {obj.value=val;}
}</script> 
<style type="text/css"> 
<!--
.Estilo1 {
	font-size: 11px;
	font-weight: bold;
}
-->
</style> 
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script> 
      
</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 
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
	<div id="header_tall"> 
		<div id="main"> 
			<!--header --> 
			<div id="header"> 
				<div class="h_logo"> 
						<div class="left"> 
						<a href="index.html"><img alt="" src="images/logo.jpg" /></a>
					</div> 
					<div style="float: right;"><span style=" margin-left: 210px;padding-top: 15px;color: #484848;font-size: 30px;float: right;padding-top: 55px;">Power Manager</span></div>
					

			            <div class="clear"></div> 
			  </div> 
  <div id="menu"> 
					 
						<div class="leftbg"> 
                        <div class="rightbg">
							<div class="padding"> 
                            <div id="ddtopmenubar" class="mattblackmenu" >
								<ul> 
									
									<li><a href="HomeEnergyManagement.jsp">Add Zone</a></li> 
									<li><a href="view_machine_list.jsp">View Zone</a></li> 
									<li><a href="live_dashboard.jsp"><span>Live Dashboard</span></a></li> 
									<li><a href="reportbysensor_type.jsp">Report</a></li> 
										<!-- li><a href="contact.html">Contact us</a></li --> 
										<li><a href="#" rel="ddsubmenu3">H.E.M.</a></li>
									<li><a  href="logout.jsp">Logout</a></li> 
									
								</ul> 

                                 <br class="clear" /> <br class="clear" /> 
                              </div>
                              
                              
                                  <ul id="ddsubmenu3" class="ddsubmenustyle"> 
                            		<li><a href="ApplianceDropDown.jsp">Appliance Profile</a></li>
                               		<li><a href="createProfile.jsp">Load Evaluation Form</a></li>
                               		<li><a href="EnergyCoastEfficiancy.jsp">Energy Coast Template</a></li>
                               		<li><a href="EnergyCalculator.jsp">Energy Calculator</a></li>
                    		</ul> 
                  
<script type="text/javascript"> 
ddlevelsmenu.setup("ddtopmenubar", "topbar") //ddlevelsmenu.setup("mainmenuid", "topbar|sidebar")
</script> 
							</div> </div>
					   
					</div> 
				</div> 
               

				<div class="content" style="display: none;"> 
					<br /> 
					<br /> 
				  <div class="text">
				    <p><br />
				      <br /><br /><br /><br /><br /><br /><br /><br /><br />
				    </p>
				    <p>&nbsp;</p>
<p>&nbsp;</p>
				    <p>&nbsp;</p>
				  </div> 

			      <p>&nbsp;</p>
</div> 
    </div> 
			<!--header end--> 
			<div id="middle"> 
				<div class="indent"> 
					<div class="columns1">
					  <div class="clear"></div> 
					</div> 
					<div class="columns2"> 
						<div class="ver_line"> 
							<div class="column1"> 
								<div class="padding">
								<div class="pageHead">
						<h1>
							Zone Detail View
						</h1>
                     <ul class="bread-crmb">
						<li>
							Welcome
							<span class="username">&nbsp;<%
					String name=(String)session.getAttribute("username");
					//System.out.println(name);
                    if(name !=null){
					out.print(name);
					}
    %></span><a class="li_alink"></a>
						</li>
						

					</ul>
					</div>
					<div id="main">
        	
			<div class="main_box">
			
				<div id="content">

		
					<div>
					
					<table style="width:700px;">
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
        System.out.println(quString2);
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
  if(sensor_type_id.equals("2"))
    {
   %> 
   <a href="reportbygraph.jsp?mid=<%=machine_id%>&sid=<%=sensor_id%>">View</a>
   <%  }   
   if(sensor_type_id.equals("3")) {
   %> 
     <a href="temp_status.jsp?mid=<%=machine_id%>&sid=<%=sensor_id%>">View</a>
 
  
   <%
   }
     if(sensor_type_id.equals("1")) {
   %> 
    <a href="door_status.jsp?mid=<%=machine_id%>&sid=<%=sensor_id%>">View</a>
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
					
                   
                </div>
              </div>

							  </div> 
							</div>
							<div class="clear">  
						    </div>
					  </div> 
					</div> 
				</div> 
			</div>

 <table width="100%" background="images/footer.png" height="54px">
 <tr>
 <td align="center"><strong><p>Copyright 2010 Wifinity | <a href="contact.html">Contact us</a></p></strong></td>
 </tr>
 </table>
 <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-20912403-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body> 
</html>
