<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.PreparedStatement"%>
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
<script src="Scripts/maxheight.js" type="text/javascript"></script> 
<link rel="stylesheet" type="text/css" href="menu/ddlevelsmenu-base.css" />
<link href="css/setting.css" rel="stylesheet" type="text/css" /> 
<script type="text/javascript" src="../popup.js"></script>
        <script type="text/javascript" src="../content.js"></script>
         <script type="text/javascript" src="menu/ddlevelsmenu.js"> </script> 
         <link rel="stylesheet" type="text/css" href="menu/ddlevelsmenu-base.css" /> 

<script language="javascript"> 
function fnclear(obj,val){
if(obj.value==val){
obj.value='';}
else if(obj.value=='') {obj.value=val;}
}</script> 
<script type="text/javascript" src="menu/ddlevelsmenu.js"> </script> 


<style type="text/css"> 
<!--
.Estilo1 {
	font-size: 11px;
	font-weight: bold;
}


#visWidth
{
	width:120px;
}

-->
</style> 
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script> 
<script language="javascript">
	
		function submit_form()
		{
		getsensor_tablerow();
		
		}
		function showadd()
		{
		document.getElementById("lnkForgot").style.display = '';
		}
		
	function displaypolicy(obj) {
	
txt = obj.options[obj.selectedIndex].value;

//document.getElementById("approve").style.display = '';
//document.getElementById("edit").style.display = '';
if (txt !='') {
document.getElementById("type").value=document.getElementById("room_type").value ;
document.getElementById("room_type").disabled=true ;

document.getElementById("tabs-3").style.display = '';
} }
</script>
		
<!--[if gte IE 5]>
<style type="text/css">

.white {
background:repeat-x scroll left bottom #FFFFFF;
filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='../images/grey-up.png' ,sizingMethod='scale');
}
.white2 {
background:repeat-x scroll left bottom #CDD6DD;
filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='../images/grey-up.png' ,sizingMethod='scale');
}
</style>
<![endif]-->


	<link rel='stylesheet' type='text/css' href='../vishnu/css/style.css' />
	<link rel='stylesheet' type='text/css' href='../vishnu/css/print.css' media="print" />
	<script type='text/javascript' src='../vishnu/js/jquery-1.3.2.min.js'></script>
	<script type='text/javascript' src='../vishnu/js/example.js'></script>



<style type="text/css">
#abcd a:hover
{
	
	color:#8faf44;
	font-size: 13px;
}
</style>



</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 
<%
					String test=(String)session.getAttribute("user_email");
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
									<li><a href="admin.jsp">Admin</a></li> 
									<li><a href="HomeEnergyManagement.jsp"><span>Add Zone</span></a></li> 
									<li><a href="view_machine_list.jsp">View Zone</a></li> 
									<li><a href="live_dashboard.jsp"  >Live Dashboard</a></li> 
										<!-- li><a href="contact.html">Contact us</a></li --> 
									<li><a href="#" rel="ddsubmenu3">H.E.M.</a></li>
								
								<li><a  href="logout.jsp">Logout</a></li> 
									
								</ul> 

                                 <br class="clear" /> <br class="clear" /> 
                              </div>
                              
                              <ul id="ddsubmenu3" class="ddsubmenustyle"> 
                            		<li><a href="ApplianceDropDown.jsp">Appliance Profile</a></li>
                               		<li><a href="createProfile.jsp">Load Evaluation Form</a></li>
                               		<li><a href="EnergyCoastEfficiancy.jsp">Energy Cost Template</a></li>
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
						<h2>
							Home Energy Management:
						</h2>
                     <ul class="bread-crmb">
						<li>
							Welcome
							<span class="username">&nbsp;
							
							<%
							String name=(String)session.getAttribute("username");
							//System.out.println(name);
                   			 if(name !=null)
                   			 {
								out.print(name);
							 }
   					 %>
   					 
   			
   					 
   					 </span><a class="li_alink"></a>
						</li>
						

					</ul>
					
					</div>
					
					
					<br>
					<h4>Click on any of the appliances below to view their energy cost</h4> 
					<br>
					<div id="abcd">
					
					<ul class="bread-crmb">
						
						<li>
						<a  href="AirCondition.jsp">Air conditioning</a>
						</li>
						<li>
						<a  href="Hitting.jsp">Heating</a>
						</li>
						<li>
						<a  href="Kitchen.jsp">Kitchen</a>
						</li>
						<li>
						<a  href="Lighting.jsp">Lighting</a>
						</li>
						<li>
						<a  href="MiscellaneousDevices.jsp">Miscellaneous Devices</a>
						</li>
						<li>
						<a  href="OutdoorDevices.jsp">Outdoor Devices</a>
						</li>
						<li>
						<a  href="PowerTools.jsp">Power Tools</a>
						</li>
						<li>
						<a  href="WasherandDryer.jsp">Washer and Dryer</a>
						</li>
					</ul>
					</div>
			
				</div>
	

<br><br>
						

				

<span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
	</span></span><div class="hdr-area"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="blue"><h3>Energy Cost</span></div><br><span>
<span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
	</span></span><!-- progbar.asp removed -->

	<!-- progbar.asp removed -->


<h3 align="center">Food Freezer (manual defrost)</h3>
<br>
<br>
<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="550">
    <tbody><tr bgcolor="lightgrey">
      <td><div align="left"><b>Size</b></div></td>
	  <td align="center"><b>Usage</b></td>
	  <td align="center" width="150"><b>Cost</b></td>
	  </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left">8 cu. ft. upright</div></td>
	    <td align="center" bgcolor="#DDE6D5">245 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$9.31 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          <div align="left">chest </div></td>
	    <td align="Center" bgcolor="#DDE6D5">245 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$6.21 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left">12 cu. ft. upright</div></td>
	    <td align="Center" bgcolor="#DDE6D5">295 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$9.95 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          <div align="left">chest</div></td>
	    <td align="Center" bgcolor="#DDE6D5">295 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$7.47 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left">16 cu. ft. upright</div></td>
	    <td align="Center" bgcolor="#DDE6D5">330 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$11.19 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          <div align="left">chest</div></td>
	    <td align="Center" bgcolor="#DDE6D5">330 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$8.09 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left">18 cu. ft. upright</div></td>
	    <td align="Center" bgcolor="#DDE6D5">350 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$13.06 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          <div align="left">chest</div></td>
	    <td align="Center" bgcolor="#DDE6D5">350 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$9.95 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left">20 cu. ft. upright</div></td>
	    <td align="Center" bgcolor="#DDE6D5">475 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$14.92 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          <div align="left">chest</div></td>
	    <td align="Center" bgcolor="#DDE6D5">475 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$9.95 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td colspan="3" align="left" bgcolor="lightgrey"><b>Food Freezer (automatic defrost)</b></td>
	    </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5">16 cu. ft. upright</td>
	    <td align="Center" bgcolor="#DDE6D5">500 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$15.54 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5">18 cu. ft. upright</td>
	    <td align="Center" bgcolor="#DDE6D5">520 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$16.78 per month³</td>
	    </tr>
    </tbody>
  </table>
</div>
<h3 align="center"><b>Oven</b></h3>

<br>
<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="550">
    <tbody><tr bgcolor="lightgrey">
      <td colspan="3" bgcolor="lightgrey"><b>Electric</b></td>
    </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left"><b>Single Oven</b></div></td>
        <td align="center" bgcolor="#DDE6D5">12,000 Watts</td>
        <td align="right" bgcolor="#DDE6D5">$8.09 per month</td>
	      </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5"><div align="left"><b>Double Oven</b></div></td>
        <td align="center" bgcolor="#DDE6D5">17,000 Watts</td>
        <td align="right" bgcolor="#DDE6D5">$10.57 per month</td>
	      </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left"><b>Self Cleaning Feature</b></div></td>
        <td align="center" bgcolor="#DDE6D5">3500 Watts</td>
        <td align="right" bgcolor="#DDE6D5">$1.02 per month</td>
	      </tr>
      <tr bgcolor="Lightgrey">
        <td colspan="3"><div align="left"><b>Gas</b></div></td>
	      </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left"><b>Single Oven</b></div></td>
        <td align="center" bgcolor="#DDE6D5">57,000 Btu/hr</td>
        <td align="right" bgcolor="#DDE6D5">$5.29 per month</td>
	      </tr>
      <tr bgcolor="White">
        <td bgcolor="#DDE6D5"><div align="left"><b>Double Oven</b></div></td>
        <td align="center" bgcolor="#DDE6D5">75,000 Btu/hr</td>
        <td align="right" bgcolor="#DDE6D5">$7.36 per month</td>
	      </tr>
      <tr bgcolor="lightyellow">
        <td bgcolor="#DDE6D5"><div align="left"><b>Self Cleaning Feature</b></div></td>
        <td align="center" bgcolor="#DDE6D5">18,000 Btu/hr</td>
        <td align="right" bgcolor="#DDE6D5">72¢ per cleaning</td>
	      </tr>
    </tbody>
  </table>
</div>
<h3 align="center"><b>Refrigerators</b></h3>
<br>
<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="550">
    <tbody><tr bgcolor="lightgrey">
      <td colspan="2" align="center"><b>Type</b></td>
	  <td colspan="3" align="center"><b>Usage</b></td>
	  <td align="center"><b>Cost</b></td>
	  </tr>
      
      <tr bgcolor="lightyellow">
        <td colspan="2" bgcolor="#DDE6D5"><b>12 cu. ft. Single Door</b></td>
	    <td colspan="3" align="Center" bgcolor="#DDE6D5">225 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$9.95 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td colspan="6" bgcolor="#DDE6D5"><b>Refrigerator - Freezer</b></td>
      </tr>
      <tr bgcolor="lightyellow">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">10 - 12 cu. ft.</div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">400 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$10.57 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td colspan="6" align="left" bgcolor="#DDE6D5"><b>Partial Auto Defrost</b></td>
      </tr>
      <tr bgcolor="lightyellow">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">12 - 16 cu. ft.</div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">400 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$10.57 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">18 - 20 cu. ft.</div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">475 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$12.44 per month³</td>
	    </tr>
      
      <tr bgcolor="lightyellow">
        <td colspan="6" bgcolor="#DDE6D5"><b>Auto Defrost</b></td>
      </tr>
      <tr bgcolor="White">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">14 - 16 cu. ft.</div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">500 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$12.44 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">18 - 20 cu. ft. </div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">550 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$14.30 per month³</td>
	    </tr>
      <tr bgcolor="White">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">20 - 24 cu. ft. </div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">600 Watts</td>
	    <td align="right" bgcolor="#DDE6D5">$17.40 per month³</td>
	    </tr>
      <tr bgcolor="lightyellow">
        <td colspan="6" bgcolor="#DDE6D5"><b>Side-by-side</b></td>
      </tr>
      <tr bgcolor="White">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">20-22 cu. ft.</div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">74 watts per hour</td>
	    <td align="right" bgcolor="#DDE6D5">$11.00 per month</td>
	     </tr>
      <tr bgcolor="lightyellow">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">22-24 cu. ft.</div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">72 watts per hour</td>
	    <td align="right" bgcolor="#DDE6D5">$10.69 per month</td>
	     </tr>
      <tr bgcolor="White">
        <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">24-26 cu. ft.</div></td>
	    <td colspan="3" align="center" bgcolor="#DDE6D5">78 watts per hour</td>
	    <td align="right" bgcolor="#DDE6D5">$11.62 per month³</td>
	    </tr>
      </tbody>
  </table>
</div>
<h3 align="center">Misc Appliances</h3>
<br>
<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="550">
	<tbody><tr bgcolor="lightgrey">
	<td colspan="2"><b>Appliance</b></td>

	<td colspan="3" align="center"><b>Usage</b></td>

	<td align="right" width="150"><b>Cost</b>	</td></tr>
		<tr bgcolor="lightyellow">
		  <td bgcolor="#DDE6D5"><b>Food Processor</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">400 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">7¾¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td bgcolor="#DDE6D5"><b>Blender</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">300 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">5¾¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		<td bgcolor="#DDE6D5"><b>Can Opener</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">220 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">4¼¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td bgcolor="#DDE6D5"><b>Carving Knife</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">100 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">2¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td bgcolor="#DDE6D5"><b>Coffee Maker</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1500 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">14¼¢ per use</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>To Keep Coffee Warm</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">100 Watts</td>
		 <td align="right" bgcolor="#DDE6D5">4¼¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td bgcolor="#DDE6D5"><b>Coffee Percolator</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		 <td colspan="3" align="center" bgcolor="#DDE6D5">660 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">3¢ per use</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Crock Pot</b> &nbsp;High</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">150 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">3¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5">
		  Low</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">70 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">1¼¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td bgcolor="#DDE6D5"><b>Deep Fryer</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1400 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">27¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td bgcolor="#DDE6D5"><b>Dishwasher</b></td>
		  <td bgcolor="#DDE6D5">&nbsp;</td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1200 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">15¢ per load²</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left"><b>Wash Cycle Only</b></div></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1200 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">5¢ per load²</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Food Processor</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">400 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">7¾¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Garbage Disposal</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">800 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">15½¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Ice Cream Maker</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">140 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">2¾¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Ice Maker (self-contained)</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">350 Watts</td>
		 <td align="right" bgcolor="#DDE6D5">$11.81 per month</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Microwave Oven</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1500 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">29¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Mixer</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">225 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">4¼¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="6" bgcolor="#DDE6D5"><b>Popcorn Popper</b></td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">Small</div></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">600 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">11¾¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" align="center" bgcolor="#DDE6D5"><div align="left">Large</div></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1400 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">27¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Roaster</b></td>
		  <td colspan="3" align="Center" bgcolor="#DDE6D5">1425 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">28¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Skillet</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1250 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">14¼¢ per hour¹</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Toaster</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1100 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">21¼¢ per hour</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Toaster - Broiler Oven</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1500 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">29¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Trash Compactor</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">750 Watts</td>
		 <td align="right" bgcolor="#DDE6D5">7¼¢ per month</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Waffle Iron</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1400 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">27¢ per hour</td>
		</tr>
		<tr bgcolor="White">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Washer</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">840 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">10¢ per load²</td>
		</tr>
		<tr bgcolor="lightyellow">
		  <td colspan="2" bgcolor="#DDE6D5"><b>Wok</b></td>
		  <td colspan="3" align="center" bgcolor="#DDE6D5">1000 Watts</td>
		  <td align="right" bgcolor="#DDE6D5">19½¢ per hour</td>
		</tr>
		<tr bgcolor="white">
		  <td colspan="6" bgcolor="#DDE6D5"><p>&nbsp;</p></td>
		</tr>
	</tbody>
	</table>
  <br>
  <br>
&nbsp;
</div>



				
	
                           
                               	
							  </div> 
							</div>
							<div class="clear">  
						    </div>
					  </div> 
					</div> 
				</div> 
			</div><br />
	</div>
 <table width="100%" background="images/footer.png" height="54px">
 <tr>
 <td align="center"><strong><p>Copyright 2010 Wifinityn | <a href="contact.html">Contact us</a></p></strong></td>
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