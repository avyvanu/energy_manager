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
        
        <script type="text/javascript" src="../amcharts/flash/swfobject.js"></script>

		<!-- following scripts required for JavaScript version. The order is important! -->
		<script type="text/javascript" src="../amcharts/javascript/amcharts.js"></script>
		<script type="text/javascript" src="../amcharts/javascript/amfallback.js"></script>
		<script type="text/javascript" src="../amcharts/javascript/raphael.js"></script>
        
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
									<li><a href="admin.jsp">Admin</a></li> 
									<li><a href="addmachine.jsp"><span>Add Zone</span></a></li> 
									<li><a href="view_machine_list.jsp">View Zone</a></li> 
									<li><a href="live_dashboard.jsp"  >Live Dashboard</a></li> 
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
							Bar Chart
						</h1>
                     <ul class="bread-crmb">
						<li>
						<a  href="assessment_dashboard.jsp" class="li_alink" style="color: #aa0000;">Assessment Dashboard </a>
						</li>
						<li>
						<a  href="dshbordl.jsp" class="li_alink" style="color: #aa0000;">Beta Demo </a>
						</li>
						<li>
						<a  href="co2-footprint.jsp" class="li_alink" style="color: #aa0000;">Co2 Footprint </a>
						</li>
						<!-- li>
						<a  href="PieChatGraph.jsp" class="li_alink" style="color: #aa0000;">Bar Graph DashBoard</a>
						</li -->
					

					</ul>
					</div>
                       
					 <div id="main">
        	
			<div class="main_box">
			<table></table>
			
				<table>
				<tr>
				
					<td align="left">	
						
						<div id="chartdiv" style="width:300px; height:250px; background-color:#FFFFFF"></div>
					
					</td>
					<td align="right">
						 <div id="chartdiv1" style="width:350px; height:300px; background-color:#FFFFFF"></div>
					</td>
				
				</tr>
			
				</table>

                
                
                
                
                 <script type="text/javascript">
	    
            var params = {
                bgcolor:"#FFFFFF"
                };

		    var flashVars = {
		        path: "amcharts/flash/",

				/* in most cases settings and data are loaded from files, but, as this require
				 all the files to be upladed to web server, we use inline data and settings here.*/
				 
		        // settings_file: "../sampleData/column_settings.xml",
		        // data_file: "../sampleData/column_data.xml"
		        
				chart_data: "2 May;75;\n3 May;101\n4 May;66\n5 May;23\n6 May;55",
				chart_settings: 
				"<settings><data_type>csv</data_type><plot_area><margins><left>50</left><right>40</right><top>50</top><bottom>50</bottom></margins></plot_area><grid><category><dashed>1</dashed><dash_length>4</dash_length></category><value><dashed>1</dashed><dash_length>4</dash_length></value></grid><axes><category><width>1</width><color>E7E7E7</color></category><value><width>1</width><color>E7E7E7</color></value></axes><values><value><min>0</min></value></values><legend><enabled>0</enabled></legend><angle>0</angle><column><width>85</width><balloon_text>{title}: {value} downloads</balloon_text><grow_time>3</grow_time><sequenced_grow>1</sequenced_grow></column><graphs><graph gid='0'><title>Stock</title><color>ADD981</color></graph><graph gid='1'><title>Column</title><color>7F8DA9</color></graph><graph gid='2'><title>Line</title><color>FEC514</color></graph></graphs><labels><label lid='0'><text><![CDATA[<b>Daily Consumption</b>]]></text><y>18</y><text_color>000000</text_color><text_size>13</text_size><align>center</align></label></labels></settings>"
			};

			// change 8 to 80 to test javascript version
            if (swfobject.hasFlashPlayerVersion("8")){
	    		swfobject.embedSWF("../amcharts/flash/amcolumn.swf", "chartdiv", "350", "300", "8.0.0", "../amcharts/flash/expressInstall.swf", flashVars, params);
	    	}
			else{
				var amFallback = new AmCharts.AmFallback();
				// amFallback.settingsFile = flashVars.settings_file;  		// doesn't support multiple settings files or additional_chart_settins as flash does
				// amFallback.dataFile = flashVars.data_file;
				amFallback.chartSettings = flashVars.chart_settings;
				amFallback.pathToImages = "../amcharts/javascript/images/";
				amFallback.chartData = flashVars.chart_data;
				amFallback.type = "column";
				amFallback.write("chartdiv");
				3
			}

		</script>
		
		<script type="text/javascript">
	    
            var params = {
                bgcolor:"#FFFFFF"
                };

		    var flashVars = {
		        path: "../amcharts/flash/",

				/* in most cases settings and data are loaded from files, but, as this require
				 all the files to be upladed to web server, we use inline data and settings here.*/
				 
		        // settings_file: "../sampleData/column_settings.xml",
		        // data_file: "../sampleData/column_data.xml"
		        
				chart_data: "Kitchen;1954\n Washing Machin and Dryer;5455\n Heater;2313\nHome Office;2208\nRefrigerator;2057",
                chart_settings: "<settings><data_type>csv</data_type><legend><enabled>0</enabled></legend><pie><inner_radius>30</inner_radius><height>7</height><angle>10</angle><gradient></gradient></pie><animation><start_time>1</start_time><pull_out_time>1</pull_out_time></animation><data_labels><show>{title}</show><max_width>100</max_width></data_labels></settings>"
			};

			// change 8 to 80 to test javascript version
            if (swfobject.hasFlashPlayerVersion("8"))
            {
	    		swfobject.embedSWF("../amcharts/flash/ampie.swf", "chartdiv1", "350", "300", "8.0.0", "../amcharts/flash/expressInstall.swf", flashVars, params);
	    	}
			else
			{
				var amFallback = new AmCharts.AmFallback();
				// amFallback.settingsFile = flashVars.settings_file;  		// doesn't support multiple settings files or additional_chart_settins as flash does
				// amFallback.dataFile = flashVars.data_file;
				amFallback.chartSettings = flashVars.chart_settings;
				amFallback.chartData = flashVars.chart_data;
				amFallback.type = "pie";
				amFallback.write("chartdiv1");
			}

		</script>
		  
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

					