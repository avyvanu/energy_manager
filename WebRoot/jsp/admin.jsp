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
        <!-- Load scripts -->
        
	
</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 

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
									<li><a href="addmachine.jsp">Home</a></li> 
									<li><a href="admin.jsp"><span>Admin</span></a></li> 
									<li><a href="addlocation.jsp">Add Location</a></li> 
									<li><a href="addsensor_type.jsp">Add Sensortype</a></li> 
									<li><a href="#" rel="ddsubmenu3">H.E.M.</a></li>
									<!-- <li><a href="contact.html">Contact us</a></li> --> 
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
						<h1>
							ADMIN PANEL
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
			
				<div>
					<p>Admin has full control to ADD LOCATION and ADD SENSOR TYPE settings though the Admin Panel. This panel is not open to the regular users or moderators, but only accessable with the admin accounts.</p>
</div>

                
                </div>
              <div class="shadow_main"></div>
		
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

					