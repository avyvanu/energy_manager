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
        
		<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {font-family: "Times New Roman", Times, serif}
.style3 {font-weight: bold}
.style10 {
	font-weight: bold;
	font-size: 8pt;
}
.style11 {color: #000000}
.style12 {
	color: #000000;
	font-weight: bold;
}
.style13 {color: #CC6633}
.style14 {color: #333333}
-->
  </style>
		<script type="text/javascript" src="zapatec.js"></script>
        <script type="text/javascript" src="calendar.js"></script>
        <script type="text/javascript" src="calendar-en.js"></script>
        <script type="text/javascript" src="coolmenupro.js"></script>
         <link href="css/rfid.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="winter.css"/>

  
   
<script type="text/javascript" src="coolmenupro.js"></script>
        
        <!-- Load scripts -->
		<script language="javascript">
	
		function submit_form()
		{
		document.forms["myform"].submit();
		
		}
		function showadd()
		{
		document.getElementById("lnkForgot").style.display = '';
		}
		
	function displaymachine(obj) {
	
	
 txt = obj.options[obj.selectedIndex].text;
  txt1 = obj.options[obj.selectedIndex].value;
 //alert(txt);
 document.getElementById("machine_name").value = txt;
  document.getElementById("machine_id").value = txt1;
//document.getElementById("approve").style.display = '';
//document.getElementById("edit").style.display = '';
//var w = document.getElementById("machine_list").selectedIndex;
  //  var selected_text = document.getElementById("machine_list").options[w].text;

getStateList()
}

function blockStateCombo12()
{
		
		//document.getElementById("state").disabled=false;
		getStateList();
}
function getStateList()
	{
	
		var machineId = document.getElementById("machine_list").value;
		var sensortypeId = <%out.print(request.getParameter( "tid" )); System.out.println("vishnu======"+(request.getParameter( "tid" )));%>;
		//var reEntrEmailId = document.getElementById("reEnterEmailAddr").value;
		xmlhttp=GetXmlHttpObject();
		if (xmlhttp==null)
  		{
	 		alert("Your browser does not support AJAX!");
	 	 	return;
  		}
		var url="SateList.jsp";
		url=url+"?sid="+Math.random();
		url=url+"&machineId="+machineId+"&sensortypeId="+sensortypeId;
		xmlhttp.onreadystatechange=stateChanged;
		xmlhttp.open("GET",url,true);
		xmlhttp.send(null);
	}
	function stateChanged()
	{
		if (xmlhttp.readyState==4)
	  	{
			 var data = xmlhttp.responseText;
			// alert("Fences----->"+data);
			 idata=data.split(",");
			 var arry = new Array(idata.length);
			 for(var i=0;i<idata.length-1;i++)
			 {
			// 	alert("string ---->"+idata[i]);
			 	fenName = idata[i].split(":");
			 //	alert("fence name is"+fenName[0]);
			 	arry[i] = document.createElement('option');  
	  			arry[i].text = fenName[1];
				arry[i].value =fenName[0];
				document.getElementById('sensor_list').options[i]= arry[i];	
			}
		}
	}
	
	
	function GetXmlHttpObject()
	{
		if (window.XMLHttpRequest)
	    {
			// code for IE7+, Firefox, Chrome, Opera, Safari
	  		return new XMLHttpRequest();
	  	}
		if (window.ActiveXObject)
		{
			// code for IE6, IE5
			return new ActiveXObject("Microsoft.XMLHTTP");
		}
		return null;
	}


</script>


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
	<%
					  String test=(String)session.getAttribute("user_email");
					  String machine_name_main="";
				      int machine_id_main=0;
				      String sensor_name_main="";
				      int sensor_id_main=0;
				      String sensor_type_main="";
				      int sensor_type_id_main=0;
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
									<li><a href="addmachine.jsp">Add Zone</a></li> 
									<li><a href="view_machine_list.jsp">View Zone</a></li> 
									<li><a href="live_dashboard.jsp"><span>Live Dashboard</span></a></li> 
									
									<li><a href="#" rel="ddsubmenu3">H.E.M</a></li>
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
						 REPORT PANEL
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
                       
					 <form method="post" name="myform" onsubmit="return getRow();" action="reportby_date.jsp">
        <div id="main">
        	

			<div class="main_box">
			
    	        <!-- Countdown -->
				
			
				<!-- Text content -->
				<div id="content">

		
					<div>
					
					<form method="post" name="myform" action="reportby_date.jsp">
					<table style="width:640px;">
					
					<tr><td>
					
					<div id="tabs-3" style="width:640px;">
  	 
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr><td>
					<p>Zone:<span style="color: red;">*</span></p>
					</td>
					   <td><input type="hidden" name="type" id="type" value="type"/>
        <input type="hidden" name="total_percentage" id="total_percentage" value="0"/>
					<div class="select">
            
            
            <select id="machine_list" name="machine_list"  onChange="displaymachine(this)">
              
              <option value="">Select</option>
              
                <%
  int a = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select DISTINCT machine_id from sensor_master where sensor_type_id='"+request.getParameter( "tid" )+"' and status=0";
    System.out.println("quString1====="+quString1);
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
            
            
            
            
          </div>
					</td>
					<td style="">
				<p>Sensor:<span style="color: red;">*</span></p></td>
					<td><input type="hidden" name="type" id="type" value="type"/>
        <input type="hidden" name="total_percentage" id="total_percentage" value="0"/>
					<div class="select">
            <select id="sensor_list" name="sensor_list"  >
              
              <option value="">Select</option>
              
            </select>
            
            
            
            
          </div>
					</td></tr>
<tr><td style="padding-top:10px">
					<p>From:<span style="color: red;">*</span></p></td>
					 <td style="padding-top:10px">
         <div class="txt-box" style="float: left">
        <input type="text" name="from" size="20" readonly="readonly" class="text_box" id="from"  />
        </div><div style="padding-top:3px;">&nbsp;<img src="images2/calendar.jpg" width="16" height="15" id="trigger_from" tabindex=15 /></div><script type="text/javascript">//<![CDATA[
      Zapatec.Calendar.setup({
        firstDay          : 1,
        step              : 1,
        electric          : false,
        inputField        : "from",
        button            : "trigger_from",
        ifFormat          : "%d-%m-%Y",
        daFormat          : "%d-%m-%Y"
      });
    //]]></script>
    </td>
					<td style="padding-top:10px">
				<p>To:<span style="color: red;">*</span></p></td>
					 <td style="padding-top:10px">
         <div class="txt-box" style="float: left">
        <input type="text" name="to" size="20" readonly="readonly" class="text_box" id="to"  />
        </div><div style="padding-top:3px;">&nbsp;<img src="images2/calendar.jpg" width="16" height="15" id="triggerr" tabindex=15 /></div><script type="text/javascript">//<![CDATA[
      Zapatec.Calendar.setup({
        firstDay          : 1,
        step              : 1,
        electric          : false,
        inputField        : "to",
        button            : "triggerr",
        ifFormat          : "%d-%m-%Y",
        daFormat          : "%d-%m-%Y"
      });
    //]]></script>
    </td></tr>
    <tr> <td style="padding-top: 10px;">View Type</td> <td style="padding-top: 10px;">
 			<select name="selectByMonthDay" >
 			
 			<option value="2">Daily</option>
    		<option value="3">Monthly</option>
    			
    			
  			</select>	   	
    	</td>
    	<td>
 				   	
    	</td>
</tr>
</table>


 <div style="height:15px"></div>
 <div style="height:15px"></div>

<div align="center"><p style="margin-top:0px;" class="reply" >
					<a  onclick="javascript:submit_form();" style="text-align: center;" title="Submit">Submit</a>
					</p></div>
	</div>
					
					</td></tr>
					<tr><td>
					
					</td><td>
					
					</td>
					</tr>
					
					
					</table>
					<input type="hidden" name="sensor_typename" id="sensor_typename" value="<%out.print(request.getParameter( "tname" ));%>" />
					
					<input type="hidden" name="machine_name" id="machine_name" value="0" />
					<input type="hidden" name="machine_id" id="machine_id" value="0" />
					
					</form>	
				
						 
					    
				
  
					</div>
					

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
