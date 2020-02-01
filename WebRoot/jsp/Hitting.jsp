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
	</span></span><div class="hdr-area"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="blue"><h3>Energy </span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="magenta">Cost</h3></span></span></div><br><span>
<span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
	</span></span>

<h3 align="center"><b>Portable Heaters</b></h3>
<br>


<div align="center">

  <table border="0" cellpadding="0" cellspacing="0" width="550">
    <span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
      </span></span><tbody><tr bgcolor="Lightgrey"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><td align="left" bgcolor="Lightgrey"><b>Type</b></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><td width="10" bgcolor="Lightgrey">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><td bgcolor="Lightgrey"><b>Usage</b></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><td colspan="2" align="center" bgcolor="Lightgrey"><b><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="magenta">Cost</span></b></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">Small Portable</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">750 Watts</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td align="right" bgcolor="#DDE6D5">14½¢ per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">Large Portable</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">1500 Watts</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td align="right" bgcolor="#DDE6D5">29¢ per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">Bath - Electric</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">1000 Watts</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td align="right" bgcolor="#DDE6D5">19½¢ per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">Bath - Gas</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td bgcolor="#DDE6D5">12,000 Btu/hr</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td width="10" bgcolor="#DDE6D5">&nbsp;</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span>  </span><td align="right" bgcolor="#DDE6D5">13½¢ per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
            </span></span></tbody>
  </table>
  <span>
  <span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
  </span></span></div><br>
<h3 align="center"><b>Central Heating Units</b></h3>
<br>
		<div align="center"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
	    </span></span>
		    <table border="0" cellpadding="0" cellspacing="0" width="550">
		      <span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
	          </span></span><tbody><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
	          </span>  </span><td colspan="2" bgcolor="Lightgrey"><div align="left"><b>Electric</b></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span>  </span><td colspan="2" bgcolor="#DDE6D5"><div align="left">Efficiency Rating (%)</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span> </span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">100</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span>  </span><td align="right" bgcolor="#DDE6D5"><div align="right">$1.42 per 25,000 Btu per hour<sup>*</sup></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span>  </span><td colspan="2" bgcolor="#DDE6D5"><div align="left"><b>Gas</b></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
              </span>   </span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td colspan="2" bgcolor="#DDE6D5"><div align="left">Efficiency Rating (AFUE)</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">69</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="right" bgcolor="#DDE6D5"><div align="right">75¢ per 25,000 Btu per hour<sup>*</sup></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">78</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="right" bgcolor="#DDE6D5"><div align="right">65¢ per 25,000 Btu per hour<sup>*</sup></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">83</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="right" bgcolor="#DDE6D5"><div align="right">61¢ per 25,000 Btu per hour<sup>*</sup></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">92</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span>  </span><td align="right" bgcolor="#DDE6D5"><div align="right">54¢ per 25,000 Btu per hour<sup>*</sup></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
                 </span></span></tbody>
		      </table>
		  <font size="-2">*Rating based on heat input</font>
          <br>
          <br>
        </div><br>
		<h3 align="center"><b>Heat Pump - Central Unit in Cooling Cycle</b></h3><br>
<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="550">
    <span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
      </span></span><tbody><tr bgcolor="Lightgrey"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="Lightgrey"><div align="left"><b>Efficiency Rating (SEER)</b></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="Lightgrey"><b><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="magenta">Cost</span></b></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">7.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">34¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">9.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">26¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">10.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">23¾¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">11.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">21¼¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">12.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">19½¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">13.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">18¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">14.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">17¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">15.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span>  </span><td align="right" bgcolor="#DDE6D5">15½¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
        </span></span></tbody>
  </table>
</div><br>
<h3 align="center" class="style1">Heat Pump - Central Unit in Heating Cycle</h3><br>
<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="550">
	<span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tbody><tr bgcolor="Lightgrey"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="Lightgrey"><div align="left"><b>Efficiency Rating (SEER)</b></div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="Lightgrey"><b><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="magenta">Cost</span></b></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">7.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">15½¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">9.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">11¾¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">10.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">10½¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">11.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">10¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">12.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">9¼¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">13.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">8¾¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="lightyellow"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">14.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">8¼¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span><tr bgcolor="white"><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="center" bgcolor="#DDE6D5"><div align="left">15.0</div></td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span>  </span><td align="right" bgcolor="#DDE6D5">7¼¢ per ton per hour</td><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tr><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span></tbody>
		</table>
  <br>
  &nbsp;
  <br>
  &nbsp;
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td align="CENTER">&nbsp;</td>
    <span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="yellow">
			 </span> </span></tr>
</tbody></table><span><span id="dtx-highlighting-item" dtx-highlight-backgroundcolor="lime">
		</span></span>





                           
                               	
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