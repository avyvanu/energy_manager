<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.lang.reflect.Array"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
        
        
        
        <script type="text/javascript" src="Scripts/content.js"></script>
        
        <script type="text/javascript" src="../amcharts/flash/swfobject.js"></script>

		<!-- following scripts required for JavaScript version. The order is important! -->
		<script type="text/javascript" src="../amcharts/javascript/amcharts.js"></script>
		<script type="text/javascript" src="../amcharts/javascript/amfallback.js"></script>
		<script type="text/javascript" src="../amcharts/javascript/raphael.js"></script>
        
        
        
        
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
.jqplot-point-label{
font-weight: bold;
font-size:1.85em;
}
/*.jqplot-table-legend { display: none; } */


-->
</style> 
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script> 
        <!-- Load scripts -->
  <link rel="stylesheet" type="text/css" href="graph/jquery.jqplot.css" />
  <link rel="stylesheet" type="text/css" href="graph/examples/examples.css" />
  <!--[if IE]><script language="javascript" type="text/javascript" src="../excanvas.js"></script><![endif]-->
  
  <!-- BEGIN: load jquery -->
  <script language="javascript" type="text/javascript" src="graph/jquery-1.4.2.min.js"></script>

  <!-- END: load jquery -->
  
  <!-- BEGIN: load jqplot -->
  <script language="javascript" type="text/javascript" src="graph/jquery.jqplot.js"></script>
	<script language="javascript" type="text/javascript" src="graph/plugins/jqplot.categoryAxisRenderer.js"></script>
	<script language="javascript" type="text/javascript" src="graph/plugins/jqplot.dateAxisRenderer.js"></script>
	<script language="javascript" type="text/javascript" src="graph/plugins/jqplot.barRenderer.js"></script>
	<script language="javascript" type="text/javascript" src="graph/plugins/jqplot.pointLabels.js"></script>
	<script language="javascript" type="text/javascript" src="graph/plugins/jqplot.enhancedLegendRenderer.js"></script>
		
		       
	
</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 
		<%
			String test = (String) session.getAttribute("user_email");
			String sensor_id_main = request.getParameter("sensor_list");
			
			String sensor_name ="";
			//System.out.println(test);
			if (test != null) {

			} else {
				response.sendRedirect("login.jsp");

			} 
			
			if (sensor_id_main != null) {

			} else {
				response.sendRedirect("reportbysensor_type.jsp");

			}
			sensor_id_main=sensor_id_main.trim();
			
						 Connection connection1=ConnectDatabase.getConnection();
    
          
         
    String qu1="select * from sensor_master where  sensor_id='"+sensor_id_main+"'";
    System.out.println(qu1+" ");
    Statement stm_n=connection1.createStatement();
   
    ResultSet d_1=stm_n.executeQuery(qu1);
     if(d_1.next())
       {
        sensor_name = d_1.getString(3);
       System.out.println(sensor_name+" ");
       
       
       %>
			
			<% 
   
    //response.sendRedirect("registration.jsp");
   
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
						Report List View
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

				<!-- Countdown -->


				<!-- Text content -->
				<div id="content">


					<div>

						

                                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												 <td>Zone Name:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "machine_name" ));%></span></td>
												 <td>Appliance Name:&nbsp;<span style="color: #009999;"><%out.print(sensor_name);%></span></td>
												 </tr><tr><td>Sensor Type:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "sensor_typename" ));%></span> </td>
												 <td>From:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "from" ));%></span></td>
												 <td>To:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "to" ));%></span></td>
											</tr></table>

<div style="height: 15px;"></div>



					<table style="width: 680px;">

							<tr>
								<td>

									<div id="tabs-3" style="width: 680px;">


										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="">
													<div style="background-color: #FFFFFF;">
														<table width="100%" border="0" cellspacing="1"
															cellpadding="4">
															<tr></tr>

															<%
															
																
																

																try

																{
																	String ByMonthDateWeek=request.getParameter("selectByMonthDay");
																	
																	System.out.println("ByMonthDateWeek==========="+ByMonthDateWeek);
																	
																	
																	String sensor_id = request.getParameter("machine_id");
																	String from = request.getParameter("from");
																	
																	System.out.println("from==========="+from);
																	
																	String to = request.getParameter("to");
																	
																	System.out.println("to==========="+to);
																	
																	String sensor_typename = request.getParameter("sensor_typename");
																	String machine_name = request.getParameter("machine_name");

																	SimpleDateFormat dateFormat = new SimpleDateFormat("dd-mm-yyyy");
																	SimpleDateFormat dateFormat2 = new SimpleDateFormat("yyyy-mm-dd");
																	Date date = dateFormat.parse(from);
																	String from_date = dateFormat2.format(date);

																	Date date2 = dateFormat.parse(to);
																	String to_date = dateFormat2.format(date2);
																	
																
																	Connection connection = ConnectDatabase.getConnection();
																	
																
																	//sensor_id.trim();
																	
																	System.out.println(sensor_id+"ll");
																	System.out.println(sensor_id.length());
																	
																	//String quString1 = "select *  from  energy_data where rf_node_id='2' and DATE_FORMAT(date_time,'%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' ";
															String Days="select  count(*), rf_node_id, sum(product_count) as power_consumed,date_time from energy_data where  DATE_FORMAT(date_time, '%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' and rf_node_id='2' group by day(DATE_FORMAT(date_time, '%Y-%m-%d')) ORDER BY DATE_FORMAT(date_time, '%Y-%m-%d') asc";
															System.out.println("data --------Days========   :   "+Days);
															
															
															String Days_forRf3="select  count(*), rf_node_id, sum(product_count) as power_consumed,date_time from energy_data where  DATE_FORMAT(date_time, '%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' and rf_node_id='3' group by day(DATE_FORMAT(date_time, '%Y-%m-%d')) ORDER BY DATE_FORMAT(date_time, '%Y-%m-%d') asc";
															System.out.println("data --------Days_forRf3========   :   "+Days_forRf3);	
															
															
															//String Month="select TIMESTAMPDIFF(day,DATE_FORMAT('"+from_date + "','%Y-%m-%d'),DATE_FORMAT('" + to_date + "','%Y-%m-%d')), count(*),date_time, sum(power_consumed)from energy_data where DATE_FORMAT(date_time, '%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' AND rf_node_id='2' group by month(DATE_FORMAT(date_time, '%Y-%m-%d'))";
															String Month="select TIMESTAMPDIFF(day,DATE_FORMAT('"+from_date + "','%Y-%m-%d'),DATE_FORMAT('" + to_date + "', '%Y-%m-%d')), count(*),date_time, sum(product_count)from energy_data where DATE_FORMAT(date_time, '%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' AND rf_node_id='2' group by month(DATE_FORMAT(date_time, '%Y-%m-%d'))";			
															
															System.out.println("data -----month----   :   "+Month);
															
															
															
															String rfnodeMonth="select TIMESTAMPDIFF(day,DATE_FORMAT('"+from_date + "','%Y-%m-%d'),DATE_FORMAT('" + to_date + "', '%Y-%m-%d')), count(*),date_time, sum(product_count)from energy_data where DATE_FORMAT(date_time, '%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' AND rf_node_id='3' group by month(DATE_FORMAT(date_time, '%Y-%m-%d'))";			
															
															System.out.println("data -----rfnodeMonth----   :   "+rfnodeMonth);
															
															//String Month="select TIMESTAMPDIFF(day,'"+from_date + "','" + to_date + "'), count(*),date_time, sum(power_consumed)from energy_data where DATE_FORMAT(date_time, '%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' AND rf_node_id='2' group by month(DATE_FORMAT(date_time, '%Y-%m-%d'))";                                  		
															
															
															
															
															
															String week="select date_time, sum(product_count) from energy_data where DATE_FORMAT(date_time, '%Y-%m-%d') between '"+from_date + "' and '" + to_date + "' AND rf_node_id='2' group by week(DATE_FORMAT(date_time, '%Y-%m-%d'))";
															System.out.println("data Days   :   "+week);
																	
																	
															
																	Statement st_day = connection.createStatement();
																	Statement st_rfday=connection.createStatement();
																	Statement st_rfMonth=connection.createStatement();
																	
																	Statement st_month = connection.createStatement();
																	Statement st_week = connection.createStatement();
																	
																	%>
																	<tr>
																	



																<%
																
                                                                   if(ByMonthDateWeek.equals("2"))
																	{
																	
																    	String monthName[]={"Jan", "Feb", "March","April","May","June","July","August","Sept","Oct","Nov","Dec"};
																		String monthValue[]={"01","02","03","04","05","06","07","08","09","10","11","12"};	
																		ResultSet rs_day = st_day.executeQuery(Days);
																		ArrayList arr_month=new ArrayList();
																		ArrayList arr_month_in_day=new ArrayList();
																		ArrayList arr_prod=new ArrayList();
																		ArrayList arr_count=new ArrayList();
																		HashMap hs=new HashMap();
																		
																		while(rs_day.next())
																		{
																			String m1=rs_day.getString("date_time");
																			
																			String monthdayss=m1.substring(5,7);
																			
																			String month_in_days=m1.substring(8,10);
																			
																			arr_month.add(monthdayss);
																			
																			arr_month_in_day.add(month_in_days);
																			
																			arr_prod.add(rs_day.getString(3));
																			
																			String reading_days=rs_day.getString("count(*)");
																			
																			arr_count.add(reading_days);
																			
																		}
																	rs_day.close();
																	st_day.close();
																	
																	int length_m=arr_month.size();
																	String monthVal=null;
																	String month_in_days=null;
																	String prod_month=null;
																	String to_count=null;
																%>
																
																<%
																
																ResultSet rsrfDay=st_rfday.executeQuery(Days_forRf3);
																
																String rfProCount=null;
																String rfCount=null;
																double rfcount=0.0;
																double rfDay=0.0;
																double rfcount_total=0.0;
																
																while(rsrfDay.next())
																{
																	 rfProCount=rsrfDay.getString(3);
																	 System.out.println("----------hiiiiiii-----"+rfProCount);
																	 rfCount=rsrfDay.getString(1);
																	 System.out.println("----------hiii rfCount-----"+rfCount);
																	 rfDay=Double.parseDouble(rfProCount);
																	 rfcount_total=rfcount_total+rfDay;
																	 System.out.println("----------hiii rfcount_total-----"+rfcount_total);
																	 rfDay=Double.parseDouble(rfCount);
																	 System.out.println("----------hiii rfDay-----"+rfDay);
																}
																
															 double calcforRF=rfcount_total/rfDay;
															 System.out.println("----------hiii calcforRF-----"+calcforRF);
															 
															 double rfavgCount=(calcforRF/1024)*3;
															  System.out.println("----------hiii rfavgCount-----"+rfavgCount);
															 double rfCouurentPower=rfavgCount*230;
															  System.out.println("----------hiii rfCouurentPower-----"+rfCouurentPower);
															 //double rf
																
																 %>
																
																
																
																
		    <div id="chartdiv" style="width:600px; height:400px; background-color:#FFFFFF"></div>	
																		
            <script type="text/javascript">
	   
            var params = { bgcolor:"#FFFFFF"};

		    var flashVars = {path: "../../amcharts/flash/",		
		        
				    //chart_data: "Kitchen;1954\nWashing Machin and Dryer;5455\nHitter;2313\nHome Office;2208\nRefrigerator;2057\nMaster Room;1771\nKids BedRoom;1495\nWaterPump;1281",
					 
					 
															   chart_data:"<%
															   double abc=0.0;
															   
															   for(int j=0;j<length_m;j++)
																	{
																	
																	System.out.println("month="+arr_month.get(j).toString()+"prod="+arr_prod.get(j).toString()+"count :"+arr_count.get(j).toString());                                                        
																		prod_month=arr_prod.get(j).toString();
																		
																		double count_in_double=Double.parseDouble(arr_count.get(j).toString());
																		
																		
																		double prod=Double.parseDouble(prod_month);
																		
																		double avg_of_reading_day=prod/count_in_double;
																		System.out.println("vishnu  avg_of_reading_day----"+avg_of_reading_day);
																		
																		double current_power=(avg_of_reading_day/1024)*3*2;
																		System.out.println("vishnu  current_power----"+current_power);
																		
																		double Energy_power=current_power*230;
																		System.out.println("vishnu  Energy_power----"+Energy_power);
																		
																		double watt_energy_consume=Math.round(Energy_power*24);
																		abc=abc+watt_energy_consume;
																		System.out.println("vishnu  watt_energy_consume----"+watt_energy_consume);
																		System.out.println("vishnu  watt_energy_consume----"+abc);
																		System.out.println("Kitchen; "+watt_energy_consume+"\\n");
																		
																		
																	}
																	out.print("Refrigerator; "+abc*2+"\\n");
																	%><%="Home Office; "+Math.round(rfCouurentPower)*24+"\\n"%>", 
																																
																
													            chart_settings: "<settings><data_type>csv</data_type><legend><enabled>0</enabled></legend><pie><inner_radius>30</inner_radius><height>7</height><angle>10</angle><gradient></gradient></pie><animation><start_time>1</start_time><pull_out_time>1</pull_out_time></animation><data_labels><show>{title}</show><max_width>100</max_width></data_labels></settings>"
																};
													
																
													            if (swfobject.hasFlashPlayerVersion("8"))
													            {
														    		swfobject.embedSWF("../amcharts/flash/ampie.swf", "chartdiv", "700", "400", "8.0.0", "../amcharts/flash/expressInstall.swf", flashVars, params);
														    	}
																else
																{
																	var amFallback = new AmCharts.AmFallback();
																	
																	amFallback.chartSettings = flashVars.chart_settings;
																	amFallback.chartData = flashVars.chart_data;
																	amFallback.type = "pie";
																	amFallback.write("chartdiv");
																}
																								
										</script>
										</div>
									 	<div class="shadow_main"></div>
																										
								        </div>
						
															<%
															    }
															   	 if(ByMonthDateWeek.equals("3"))
															    {
			   
			   
																	String monthName[]={"Jan", "Feb", "March","April","May","June","July","August","Sept","Oct","Nov","Dec"};
																	String monthValue[]={"01","02","03","04","05","06","07","08","09","10","11","12"};	
																		ResultSet rs_month = st_month.executeQuery(Month);
																		ArrayList arr_month=new ArrayList();
																		ArrayList arr_prod=new ArrayList();
																		
																		ArrayList arr_count21=new ArrayList();
																		
																		ArrayList arr_day_count=new ArrayList();
																		
																		HashMap hs=new HashMap();
																		
																		while(rs_month.next())
																		{
																		    String m1=rs_month.getString("date_time");
																			String monthdayss=m1.substring(5,7);
																			arr_month.add(monthdayss);
																			
																			arr_prod.add(rs_month.getString(4));
																			//arr_prod.add(rs_day.getString(3));
																			
																			String reading_days=rs_month.getString("count(*)");
																			arr_count21.add(reading_days);
																			
																			String day_count_total=rs_month.getString(1);
																			arr_day_count.add(day_count_total);
																			
																			
																		}
																	rs_month.close();
																	st_month.close();
																	int length_m=arr_month.size();
																	String monthVal=null;
																	String prod_month=null;
																	
																	%>
																	
																	<%
																
																ResultSet rsrfMonth=st_rfMonth.executeQuery(rfnodeMonth);
																
																String rfProCount=null;
																String rfCount=null;
																String time=null;
																double rfcount=0.0;
																double rfDay=0.0;
																double rfcount_total=0.0;
																
																double rfwattEnergyConsume=0.0;
																
																double rftime=0.0;
																
																while(rsrfMonth.next())
																{
																	 rfProCount=rsrfMonth.getString(4);
																	 System.out.println("----------rfProCount-----"+rfProCount);
																	 rfCount=rsrfMonth.getString(2);
																	 System.out.println("----------rfCount-----"+rfCount);
																	 time=rsrfMonth.getString(1);
																	 System.out.println("----------time-----"+time);
																	 rfDay=Double.parseDouble(rfProCount);
																	 rfcount_total=rfcount_total+rfDay;
																	 rfDay=Double.parseDouble(rfCount);
																	 rftime=Double.parseDouble(time);
																	 
															 double calcforRF=rfcount_total/rfDay;
															  System.out.println("----------calcforRF-----"+calcforRF);
															 double rfavgCount=(calcforRF/1024)*3;
															  System.out.println("----------rfavgCount-----"+rfavgCount);
															 double rfCouurentPower=rfavgCount*230;
															  System.out.println("----------rfCouurentPower-----"+rfCouurentPower);
															  rfwattEnergyConsume=(rfCouurentPower)*(rftime*24);
															  System.out.println("----------rfwattEnergyConsume-----"+rfwattEnergyConsume);
															 
																}
																
															
																
																 %>
																
																
				<div id="chartdiv1" style="width:600px; height:400px; background-color:#FFFFFF"></div>	
																		
                  <script type="text/javascript">
	   
           		 var params = { bgcolor:"#FFFFFF"};

		   		 var flashVars = {path: "../../amcharts/flash/",		
		        
	
	// chart_data: "Kitchen;1954\nWashing Machin and Dryer;5455\nHitter;2313\nHome Office;2208\nRefrigerator;2057\nMaster Room;1771\nKids BedRoom;1495\nWaterPump;1281",
	
	                                                        chart_data: "  <%
																	
																	double abcd=0.0;
																	for(int j=0;j<length_m;j++)
																	{
																	System.out.println("month="+arr_month.get(j).toString()+"prod="+arr_prod.get(j).toString()+"count :"+arr_count21.get(j).toString()+" total_day :"+arr_day_count.get(j).toString());
																	
																	double count_in_double12=Double.parseDouble(arr_count21.get(j).toString());
																	System.out.println("vishnu  avg_of_reading_month----"+count_in_double12);
																	
																	long total_day_in_long21=Long.parseLong(arr_day_count.get(j).toString());
																	System.out.println("total_day_in_long========"+total_day_in_long21);
																	
																	
																	prod_month=arr_prod.get(j).toString();
																	
																	double prod=Double.parseDouble(prod_month);
																	
																	double avg_of_reading_day121=prod/count_in_double12;
																	System.out.println("vishnu  avg_of_reading_month----"+avg_of_reading_day121);
																	
																	double current_power121=(avg_of_reading_day121/1024)*3*2;
																	System.out.println("vishnu  current_power_month----"+current_power121);
																	
																	double Energy_power21=current_power121*230;
																	System.out.println("vishnu  Energy_power_month----"+Energy_power21);
																		
																	double watt_energy_consume=Math.round((Energy_power21)*(24*total_day_in_long21));
																	System.out.println("vishnu  watt_energy_consume_month----"+watt_energy_consume);
																	abcd=abcd+watt_energy_consume;	
																	
																	//out.print("Refrigerator; "+watt_energy_consume+"\\n");
																	// out.print(watt_energy_consume+",");
																	
																	}
																	out.print("Refrigerator; "+abcd*2+"\\n");
	                                                             %><%="Home Office; "+rfwattEnergyConsume+"\\n"%>",
	
	
	
	chart_settings: "<settings><data_type>csv</data_type><legend><enabled>0</enabled></legend><pie><inner_radius>30</inner_radius><height>7</height><angle>10</angle><gradient></gradient></pie><animation><start_time>1</start_time><pull_out_time>1</pull_out_time></animation><data_labels><show>{title}</show><max_width>100</max_width></data_labels></settings>"        
	};

			
            if (swfobject.hasFlashPlayerVersion("8")){
	    		swfobject.embedSWF("../amcharts/flash/ampie.swf", "chartdiv1", "700", "400", "8.0.0", "../amcharts/flash/expressInstall.swf", flashVars, params);
	    	}
			else{
				var amFallback = new AmCharts.AmFallback();
				
				amFallback.chartSettings = flashVars.chart_settings;
				amFallback.chartData = flashVars.chart_data;
				amFallback.type = "pie";
				amFallback.write("chartdiv1");
			}

			</script>
		  	</div>
            <div class="shadow_main"></div>
		
                </div>	
																<%	
																	}
																%>



																<%
																	} 
																	catch (Exception e) 
																	{
																		e.printStackTrace();
																	}
																%>






														</table>
													</div>
												</td>
											</tr>

										</table>

									</div>

								</td>
							</tr>
							<tr>
								<td>

								</td>
								<td>

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
