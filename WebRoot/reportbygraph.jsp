<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>

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
		<title>Live Dashboard</title>
		
        <!-- Load styles -->
         <link type="text/css" rel="stylesheet" href="css/contentstyle.css"/>
	    <link type="text/css" rel="stylesheet" href="css/subpage.css"/>
        <script type="text/javascript" src="popup.js"></script>
        <script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
        <!-- Load scripts -->
		  <!--[if IE]><script language="javascript" type="text/javascript" src="../excanvas.js"></script><![endif]-->
  
  <link rel="stylesheet" type="text/css" href="graph/jquery.jqplot.css" />
  <link rel="stylesheet" type="text/css" href="graph/examples/examples.css" />
  
  <!-- BEGIN: load jquery -->
  <script language="javascript" type="text/javascript" src="graph/jquery-1.4.2.min.js"></script>
  <!-- END: load jquery -->
  
  <!-- BEGIN: load jqplot -->
  <script language="javascript" type="text/javascript" src="graph/jquery.jqplot.js"></script>
  <script language="javascript" type="text/javascript" src="graph/plugins/jqplot.meterGaugeRenderer.js"></script>
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
    font-size: 12pt;
}

#chart5 .jqplot-meterGauge-tick, #chart5 .jqplot-meterGauge-label {
    font-size: 9pt;
}
</style>
<style type="text/css">
 .jqplot-series-canvas {
 background: url("images/n3.PNG") no-repeat scroll center top transparent;
 
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
	<body>
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
    
          
         
    String qu1="SELECT SUM(product_count) FROM energy_data where rf_node_id='2'  and DATE_FORMAT(date_time, '%Y-%m-%d') = '2011-01-12' ORDER BY id DESC LIMIT 1";
    System.out.println("ddd"+qu1);
    Statement stm_n=connection1.createStatement();
   
    ResultSet d_1=stm_n.executeQuery(qu1);
     if(d_1.next())
       {
       product_count=d_1.getString(1);

         if(product_count ==null){
					product_count="0";
					}
      
   
    //response.sendRedirect("registration.jsp");
   
     }
 %>
    <% 
    product_count=Integer.parseInt(product_count)/1000;
    
    
    
    %>
    <script id = "example_5" type="text/javascript">$(document).ready(function(){
   s1 = [<%=product_count%>];
   plot5 = $.jqplot('chart5',[s1],{
       seriesDefaults: {
           renderer: $.jqplot.MeterGaugeRenderer,
           rendererOptions: {
               label: 'Product Count Meter',
               labelPosition: 'bottom',
               intervalOuterRadius: 120,
               ticks: [0, 10000, 20000, 30000, 40000, 50000,60000, 70000, 80000, 90000, 100000],
               intervals:[10000, 20000, 30000, 40000, 50000,60000, 70000, 80000, 90000, 100000],
               intervalColors:['#66cc66', '#66cc66', '#66cc66','#e7e658', '#e7e658', '#e7e658','#e7e658', '#81a9e8', '#81a9e8', '#81a9e8']
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
					
					<div style="text-align:center;width:640px"><h1>GRAPHICAL REPORT PANEL</h1></div>
					<div class="member_count" style="float: left;"></div><div class="member_count">
					<%
					SimpleDateFormat dateFormat=new SimpleDateFormat("MMM d,yyyy");
					
					Date date=new Date();
					
					System.out.println(dateFormat.format(date));
					
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
 
<?php include "nav.inc"; ?>

<!-- <div id="chart0" class="plot" style="width:250px;height:170px;"></div>

<div id="chart1" class="plot" style="width:120px;height:70px;"></div>

<div id="chart3" class="plot" style="width:300px;height:180px;"></div>

<div id="chart4" class="plot" style="width:500px;height:300px;"></div> -->

<div id="chart5" class="plot" style="width:372px;height:225px;background-color: black;"></div>

   
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
		<td id="" class="white2"><b>Date</b></td>
		<td id="" class="white2"><b>Product Count</b></td>
        
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
    <td classname="white" class="white" id=""><%=dateFormat.format(date)%>
  </td>
    <td classname="white" class="white" id=""><%=product_count%>
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