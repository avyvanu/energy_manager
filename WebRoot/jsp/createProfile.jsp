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
					
                       
    
	<div id="page-wrap">

		
		
	  <div id="identity"></div>
		<div style="clear:both"></div>
		
		<table id="items" border="1">
		
			<tr>
			<td colspan="2">Load Evaluation Form: </td>
        <td colspan="3">
		Name:<input type="text" name="name" />		</td>
        <td colspan="3">Date:<input type="text" name="date" />
		</td>
			</tr>
		
		
		  <tr>
		      <th><div align="center">Appliance</div></th>
			   <th><div align="center">AC</div></th>
		      <th><div align="center">DC</div></th>
		      <th><div align="center">Qty.</div></th>
		      <th>
			    <div align="center">Watt(V*A) W*1.5 for AC              </div></th>
			  <th><div align="center">Hrs./Day</div></th>
		      <th><div align="center">Avg.Watt Hrs/Day </div></th>
		  </tr>
		  
		  <tr class="item-row">
		      <td class="item-name"><div class="delete-wpr">
			    <div align="center">
			      <input type="text" name="Appliance"/>
			      </div>
		      </div>			  </td>
		      <td class="AC">
			    <div align="center">
			      <input type="radio" name="radioAC" value="radioAC"/>			  
	          </div></td>
			   <td class="DC">
			     <div align="center">
			       <input type="radio" name="radioAC" value="radioAC"/>			  
	          </div></td>
			   <td><div align="center">
			     <input type="text" name="cost1" class="cost1"/>*
		       </div></td>
		      <td><div align="center">
		        <input type="text" name="cost" class="cost"/>*
	          </div></td>
		      <td><div align="center">
		        <input type="text" name="qty" class="qty"/>
	          </div></td>
		      <td><div align="center"><span class="price">W-Hours: 00.00</span></div></td>
		  </tr>
		
		  
		  <tr id="hiderow">
		    <td colspan="7"><a id="addrow" href="javascript:;" title="Add a row">Add a row</a></td>
		  </tr>
		 
		  <tr>
			 
		      <td colspan="2" class="blank"> <div align="center"></div></td>
		      <td colspan="2" class="blank"> <div align="center"></div></td>
		      <td colspan="2" class="total-line"><div align="right">Total Watts Hours Per Day :</div></td>
		      <td class="total-value"><div id="total">
		        <div align="center">W-Hours: 00.00</div>
		      </div></td>
		  </tr>
		  
      <tr>
        <td colspan="8">Load Correction Factor compensates for losses in the system. Batteries and other power system components are not 100% efficient. We have found that increasing load value by 30% adequately factors in these losses. </td>
		  </tr>
		</table>
		

		
</div>
	


<div class="demo-description">
<p>&nbsp;</p>

</div><!-- End demo-description -->
        				</tr>
        				</table>
        				
        			
        				
		<div id="modal2" style=" background-color:none; padding:25px; font-size:150%; display:none;">
	 <table style="border:3px solid black;" width="31%" cellspacing="0" cellpadding="0" >
        <tbody ><tr>
          <td class="header"><div style="float: left;width:96%;"> ADD ZONE INFORMATION  </div><div> <a id="TB_closeWindowButton" style="color: #ffffff;text-decoration: none;" href="#" onClick="Popup.hide('modal2')">X</a></div></td> 
        </tr>

        <tr>
          <td class="home_box">
             <iframe src="add_machine_profile.jsp" width="350px" height="185px"></iframe>           
          </td>
        </tr>
      </tbody></table>
</div>

<div id="modal" style=" background-color:none; padding:25px; font-size:150%; display:none;">
	 <table style="border:3px solid black;" width="31%" cellspacing="0" cellpadding="0" >
        <tbody ><tr>
          <td class="header"><div style="float: left;width:96%;"> ADD SENSOR INFORMATION  </div><div> <a id="TB_closeWindowButton" style="color: #ffffff;text-decoration: none;" href="#" onClick="Popup.hide('modal')">X</a></div></td> 
        </tr>

        <tr>
          <td class="home_box">
             <iframe src="add_sensor_profile.jsp" id="myframe" width="430px" height="140px"></iframe>           
          </td>
        </tr>
      </tbody></table>
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