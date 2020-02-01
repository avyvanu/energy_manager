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
  <link rel="stylesheet" href="winter.css" />

  
   
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
		var sensortypeId = <%out.print(request.getParameter( "tid" ));%>;
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

<div id="chooser">
 
</div>
		<form method="post" name="myform" onsubmit="return getRow();" action="reportby_date.jsp">
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
					
					<div style="text-align:center;width:640px"><h1>ADD MACHINE</h1></div>
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
					<div style="height: 10px;"></div>
					<div><table style="margin-left: 180px;margin-top: 10px;">
					
					<tr>
					</tr>
					</table></div>
					<div style="height:15px"></div>
					
					<form method="post" name="myform" action="reportby_date.jsp">
					<table style="width:640px;">
					
					<tr><td>
					
					<div id="tabs-3" style="width:640px;">
  	 
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr><td>
					<p>Machine:<span style="color: red;">*</span></p>
					</td>
					   <td><input type="hidden" name="type" id="type" value="type"/>
        <input type="hidden" name="total_percentage" id="total_percentage" value="0"/>
					<div class="select">
            <select id="machine_list" name="machine_list"  onChange="displaymachine(this)" >
              
              <option value="">Select</option>
              
                <%
  int a = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select DISTINCT machine_id from sensor_master where sensor_type_id='"+request.getParameter( "tid" )+"' and status=0";
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
<tr><td style="">
					<p>From:<span style="color: red;">*</span></p></td>
					 <td>
         <div class="txt-box" style="float: left">
        <input type="text" name="from" size="20" readonly="readonly" id="from"  />
        </div><div style="padding-top:3px;"><img src="images/calendar.jpg" width="16" height="15" id="trigger_from" tabindex=15 /></div><script type="text/javascript">//<![CDATA[
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
					<td style="">
				<p>To:<span style="color: red;">*</span></p></td>
					 <td>
         <div class="txt-box" style="float: left">
        <input type="text" name="to" size="20" readonly="readonly" id="to"  />
        </div><div style="padding-top:3px;"><img src="images/calendar.jpg" width="16" height="15" id="triggerr" tabindex=15 /></div><script type="text/javascript">//<![CDATA[
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

		
		
			
		
	</body>
</html>