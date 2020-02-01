<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
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
 <meta http-equiv="refresh" content="20" />  
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
function randomXToY(minVal,maxVal,floatVal)
{
  var randVal = minVal+(Math.random()*(maxVal-minVal));
  return typeof floatVal=='undefined'?Math.round(randVal):randVal.toFixed(floatVal);
}
  var x=randomXToY(220,240);
  //alert(x);
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
      <!-- Load scripts -->
		  <!--[if IE]><script language="javascript" type="text/javascript" src="../excanvas.js"></script><![endif]-->
  
  <link rel="stylesheet" type="text/css" href="../graph/jquery.jqplot.css" />
  <link rel="stylesheet" type="text/css" href="../graph/examples/examples.css" />
  
  <!-- BEGIN: load jquery -->
  <script language="javascript" type="text/javascript" src="../graph/jquery-1.4.2.min.js"></script>
  <!-- END: load jquery -->
  
  <!-- BEGIN: load jqplot -->
  <script language="javascript" type="text/javascript" src="../graph/jquery.jqplot.js"></script>
  <script language="javascript" type="text/javascript" src="../graph/plugins/jqplot.meterGaugeRenderer.js"></script>
  <!-- END: load jqplot -->

<style type="text/css">

.plot {
    margin-bottom: 30px;
    margin-left: auto;
    margin-right: auto;
}

#chart0 .jqplot-meterGauge-label {
    font-size: 10pt;
}

#chart1 .jqplot-meterGauge-tick {
    font-size: 6pt;
}

#chart2 .jqplot-meterGauge-tick {
    font-size: 8pt;
}

#chart3 .jqplot-meterGauge-tick, #chart0 .jqplot-meterGauge-tic {
    font-size: 10pt;
}

#chart4 .jqplot-meterGauge-tick, #chart4 .jqplot-meterGauge-label {
    font-size: 9pt;
}

#chart5 .jqplot-meterGauge-tick, #chart5 .jqplot-meterGauge-label {
    font-size: 9pt;
    color: #484848;
}
#chart6 .jqplot-meterGauge-tick, #chart4 .jqplot-meterGauge-label {
    font-size: 9pt;
     color: #484848;
}
</style>
<style type="text/css">
 .jqplot-series-canvas {
 background: url("../images2/n3.PNG") no-repeat scroll center top transparent;
 
 }</style>	

<!-- <script type="text/javascript">
$(document).ready(function(){
      $.jqplot.config.enablePlugins = true;

   s1 = [1];

   plot0 = $.jqplot('chart0',[s1],{
       title: 'Network Speed',
       // title: {
       //     text: 'Network Speed',
       //     location: 'n'
       // },
       seriesDefaults: {
           renderer: $.jqplot.MeterGaugeRenderer,
           rendererOptions: {
               label: 'MB/s'
           }
       }
   });

   plot1 = $.jqplot('chart1',[s1],{
       seriesDefaults: {
           renderer: $.jqplot.MeterGaugeRenderer,
           rendererOptions: {
               showTickLabels: false,
               intervals:[2,3,4],
               intervalColors:['#66cc66', '#E7E658', '#cc6666']
           }
       }
   });

   s1 = [666];
   plot3 = $.jqplot('chart3',[s1],{
       seriesDefaults: {
           renderer: $.jqplot.MeterGaugeRenderer,
           rendererOptions: {
               min: 100,
               max: 500,
               intervals:[200, 300, 400, 500],
               intervalColors:['#66cc66', '#93b75f', '#E7E658', '#cc6666']
           }
       }
   });

   s1 = [52200];
   plot4 = $.jqplot('chart4',[s1],{
       seriesDefaults: {
           renderer: $.jqplot.MeterGaugeRenderer,
           rendererOptions: {
               label: 'Metric Tons per Year',
               labelPosition: 'bottom',
               labelHeightAdjust: -5,
               // intervalOuterRadius: 85,
               ticks: [10000, 30000, 50000, 70000],
               intervals:[22000, 55000, 70000],
               intervalColors:['#66cc66', '#E7E658', '#cc6666']
           }
       }
   });  
 });
</script> -->


 
        
	
</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 
<%   
     int a = 1;
     String machine_location="";
     String location="";
     int machine_id=0;
     String machine_name="";
     String machine_model="";
     String machine_description="";
     String machine_specification="";
     String machine_min_output="";
     String machine_max_output="";
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from machine_master where  machine_id='"+request.getParameter( "mid" )+"' and machine_status=0 ";
    System.out.println("quString1========vishnu=========="+quString1);
    
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     if (d.next()) {
 
      machine_id =d.getInt(1);
      machine_name=d.getString(2);
      machine_location=d.getString(3);
      machine_model=d.getString(4);
      machine_description=d.getString(5);
      machine_specification=d.getString(6);
      machine_min_output=d.getString(7);
      machine_max_output=d.getString(8);
     int aInt = machine_id;
     
     
      String quString2="select * from machine_location_master where location_id='"+machine_location+"' and status=0 ";
  System.out.println("quString1========vishnu ---  =========="+quString2);
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
    
    
    
    
    
    
    
    
    

    
	String product_count="0";
					String test=(String)session.getAttribute("user_email");
					//System.out.println(test);
                    if(test !=null){
					
					}else
					{
					response.sendRedirect("login.jsp");
					
					}
    	%>
    				
		<% 			 Connection connection1=ConnectDatabase.getConnection();
    
          
         
    String qu1="SELECT  SUM(product_count),count(*),CURRENT_TIME() FROM energy_data where rf_node_id='2'  and DATE_FORMAT(date_time, '%Y-%m-%d') = CURDATE() ORDER BY id DESC LIMIT 1";
 	String temp="SELECT  SUM(product_count),count(*),CURRENT_TIME(),raw_mat FROM energy_data where rf_node_id='4'  and DATE_FORMAT(date_time, '%Y-%m-%d') = CURDATE() ORDER BY id DESC LIMIT 1";
    String No_Door_open="SELECT  power_status  FROM energy_data where rf_node_id='8'  and DATE_FORMAT(date_time, '%Y-%m-%d') = CURDATE()";
    
   // /String qu1="SELECT  SUM(product_count),count(*),'11:28:45' FROM energy_data where rf_node_id='2'  and DATE_FORMAT(date_time, '%Y-%m-%d') = '2011-05-11' ORDER BY id DESC LIMIT 1";
   // String temp="SELECT  SUM(product_count),count(*),'11:28:45',raw_mat FROM energy_data where rf_node_id='4'  and DATE_FORMAT(date_time, '%Y-%m-%d') = '2011-05-11' ORDER BY id DESC LIMIT 1";
  //   String No_Door_open="SELECT  SUM(power_status),count(*),'11:28:45',raw_mat,power_status  FROM energy_data where rf_node_id='8'  and DATE_FORMAT(date_time, '%Y-%m-%d') = '2011-05-11' ORDER BY id DESC LIMIT 1";
    
    //System.out.println("ddd"+No_Door_open);
   // System.out.println("ddd"+temp);
    System.out.println("ddd"+qu1);
    
    Statement stm_n=connection1.createStatement();
    Statement stm_tempeture=connection1.createStatement();
    Statement stm_doorOpen=connection1.createStatement();
   
    ResultSet d_1=stm_n.executeQuery(qu1);
    ResultSet rs_temp=stm_tempeture.executeQuery(temp);
   
    ResultSet rs_door=stm_doorOpen.executeQuery(No_Door_open);
    String store_tempetaure=null;
    
    String total_doorOpen=null;
    //int totalDoorOpen
   
    
     if(d_1.next())
       {
      	 product_count=d_1.getString(1);
      	 

      	 if(product_count ==null)
      	 {
			product_count="0";
	   	 }
 
       }
       
       while(rs_temp.next())
      {
      		store_tempetaure=rs_temp.getString(4);
     }
    int totalFinal=0;
    int totalDoorOpen=0; 
    String str_door_status=null; 
    while(rs_door.next())
    
   {
   	str_door_status=str_door_status+rs_door.getInt("power_status");
    	
   }
  	 Pattern p=Pattern.compile("10");
	Matcher m=p.matcher(str_door_status);
	Integer  count=0;
	while(m.find())
	{
		count++;
	
	}
	System.out.println("--=====---"+count);
   
     long power_consumed=Long.parseLong(product_count);
    
     System.out.println("vishnu power :"+power_consumed);
     long no_of_reading=d_1.getLong(2);
     
     System.out.println("vishnu no_of_reading :   "+no_of_reading);
    
     String hrmmss=d_1.getString("CURRENT_TIME()");
     System.out.println("vishnu total hrs :   "+hrmmss);
 
     String hr=hrmmss.substring(0,2);
     System.out.println("vishnu hr :"+hr);
     
     double hr1=Double.parseDouble(hr);
     
      System.out.println("vishnu hr Double :"+hr1);
     
     String mm=hrmmss.substring(3,5);
     System.out.println("vishnu mm :"+mm);
     double mm1=Double.parseDouble(mm);
       System.out.println("vishnu mm Double :"+mm1);
     
     
     String ss=hrmmss.substring(6,8);
     System.out.println("vishnu ss :"+ss);
     double ss1=Double.parseDouble(ss);
      System.out.println("vishnu ss Double :"+ss1);
     
     
     double totalTime=(hr1+(mm1/60.0)+(ss1/3600.0));
    
     
     long average_of_reading=power_consumed/no_of_reading;
    
  
     double dddd12=average_of_reading; 
   
    
     double acctualCurrent=(dddd12/1024)*6;
     
     
     double power=acctualCurrent*230.0;
    
     double watts=power*totalTime;
     
     
     double roundinwatts=Math.round(watts);
    
     double roundinwatts11=Math.round(roundinwatts)/10.0;
     
 
    
    %>
    <script id = "example_5" type="text/javascript">$(document).ready(function(){
   s1 = [<%=store_tempetaure%>];
   plot5 = $.jqplot('chart5',[s1],{
       seriesDefaults: {
           renderer: $.jqplot.MeterGaugeRenderer,
           rendererOptions: {
               label: 'Temperature Meter',
               labelPosition: 'bottom',
               intervalOuterRadius: 120,
               ticks: [0,10,20,30,40,50],
               intervals:[0,10,20,30,40,50],
              intervalColors:['#66cc66', '#E7E658', '#cc6666','#66cc66', '#E7E658']
           }
       }
   });
 
 
});</script> 
<script type="text/javascript">
    $(document).ready(function(){
        
        $('#code_5').html($('#example_5').html());
        $(document).unload(function() {$('*').unbind(); });

    });
</script> 
	<div id="header_tall"> 
		<div id="main" style="width: 900px;"> 
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
							<div class="padding" > 
                            <div id="ddtopmenubar" class="mattblackmenu" >
								<ul> 
									<li><a href="admin.jsp">Admin</a></li> 
									<li><a href="HomeEnergyManagement.jsp">Add Zone</a></li> 
									<li><a href="view_machine_list.jsp">View Zone</a></li> 
									<li><a href="live_dashboard.jsp" ><span>Live Dashboard</span></a></li> 
									
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
								<div class="pageHead" style="width: 850px;">
						<h1>
							Live Dashboard
						</h1>
                     <ul class="bread-crmb">
						<li>
							Welcome
							<span class="username">&nbsp;<%
					SimpleDateFormat dateFormat=new SimpleDateFormat("MMM d,yyyy");
					
					Date date=new Date();
					
					System.out.println(dateFormat.format(date));
					
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
			
				<div id="content" style="width: 800px;">

		<div>
					
					
					<div class="member_count" style="float: left;"></div><div class="member_count">
					
				</div>
						<div class="count" id="countdown"></div>
						
					
					<table style="width:640px;">
					
					<tr><td>
					
					
					<div id="tabs-3" style="width:830px;">
					
					<form method="post" name="" action="">	
 
<?php include "nav.inc"; ?>

<!-- <div id="chart0" class="plot" style="width:250px;height:170px;"></div>

<div id="chart1" class="plot" style="width:120px;height:70px;"></div>

<div id="chart3" class="plot" style="width:300px;height:180px;"></div>

<div id="chart4" class="plot" style="width:500px;height:300px;"></div> -->

<div id="chart5" class="plot" style="width:372px;height:225px;background-color: black;margin-left: 240px;"></div>


   
</form>
 		
	</div>
			
					
					</td></tr>
					<tr><td>
					<table style="width: 800px;">
					
					<tbody><tr><td>
					
					<div style="width: 800px;" id="tabs-3">

  	 
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tbody><tr>
    <td class="gridtd"><div style="max-height: 800px; overflow: auto;">
      <table width="100%" cellspacing="1" cellpadding="4" border="0">
    <tbody><tr>
       <!--  <td class="white2" style="width:55px;"><b>Select</b></td>
       <td id="" class="white2"><b>Model</b></td> -->
		<td class="white2"><b>Zone Name</b></td>
		
		<td id="" class="white2" style="width: 200px;"><b>Appliance Description</b></td>
		<td id="" class="white2" style="width: 100px;"><b>Location</b></td>
		<td id="" class="white2"><b>Today's Date</b></td>
		
        <td id="" class="white2"><b>Total Time (HH:MM)</b></td>
       
       <td id="" class="white2"><b>Temperature (°C)</b></td>
    </tr>
   
     <tr id="1row">
  <!-- <td id="" classname="white" class="white">
   <input type="radio" onclick="getid(this);" name="chk" id="chk" value="1"/></td>
   <td classname="white" class="white" id=""><%=machine_model%>
   </td>
    --> 
   <td classname="white" class="white" id="" style="text-align: center;"><a href="machine_profile.jsp?mid=<%=machine_id%>"><%=machine_name%></a>
   </td>
   
   <td classname="white" class="white" id="" style="text-align: center;">Tata Global Beverage(No Freezer)
  Stabilizer Info: Rated - 0.85 KVA
  </td>
   
   <td classname="white" class="white" id="" style="text-align: center;"><%=location%>
  </td>
    <td classname="white" class="white" id="" style="text-align: center;"><%=dateFormat.format(date)%>
  </td>
  
 
 
 </td>
    <td classname="white" class="white" id="" style="text-align: center;"><%=hr+":"+mm%>
 </td>
 </td>
  
 </td>
    <td classname="white" class="white" id=""><%=""+store_tempetaure%>
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
					

 <table width="100%" background="images/footer.png" height="54px">
 <tr>
 <td align="center"><strong><p>Copyright 2010 Wifinity</p></strong></td>
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
	