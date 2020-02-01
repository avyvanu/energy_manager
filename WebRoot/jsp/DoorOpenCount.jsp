<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="javax.xml.ws.Response"%>
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
                       
					 <div id="main">
        	
			<div class="main_box">

				<!-- Countdown -->


				<!-- Text content -->
				<div id="content">


					<div>

		
		<%
		
		/* fatching the data form data base appliance name */
		
		 String sensor_name_query=request.getParameter("sensor_name_query");
		 String qu1="select * from sensor_master where  sensor_id='"+sensor_name_query+"'";
		 Connection donnection_forsensorType=ConnectDatabase.getConnection();
    	 Statement stmt_sensorType=donnection_forsensorType.createStatement();
   		 ResultSet rs_sensorType=stmt_sensorType.executeQuery(qu1);
   		 String name_of_sensor=null;
    	 if(rs_sensorType.next())
    	 {
    	 	name_of_sensor=rs_sensorType.getString("sensor_name");
    	 }
      System.out.println("sensor type name :"+name_of_sensor); 
		
			String dateFroms=request.getParameter("datefrom");
			String toDateFroms=request.getParameter("date_to");
		 %>
		
		
						

     <table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				 <td>Zone Name:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "machine_name" ));%></span></td>
				 <td>Appliance Name:&nbsp;<span style="color: #009999;"><%=name_of_sensor%></span></td>
				 </tr><tr><td>Sensor Type:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "sensor_typename" ));%></span> </td>
				 <td>From:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "datefrom" ));%></span></td>
				 <td>To:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "date_to" ));%></span></td>
			</tr>
	 </table>

			<div style="height: 15px;"></div>
					


					<table style="width: 680px;">

					<tr>
						<td>

						<div id="tabs-3" style="width: 680px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
							<td class="">
							<div style="background-color: #FFFFFF;">
							<table width="100%" border="0" cellspacing="1" cellpadding="4">
					<tr>
					</tr>
					
					
					
					
					
					


<script type="text/javascript" language="javascript">
  
 $(document).ready(function(){
      $.jqplot.config.enablePlugins = true;
	<%
		
		try
		{		
		//	String queyForDoor="select date_time, rf_node_id,power_status  from energy_data where  DATE_FORMAT(date_time, '%Y-%m-%d') between '"+ dateFroms +"' and '"+ toDateFroms +"' and rf_node_id='8' group by day(DATE_FORMAT(date_time, '%Y-%m-%d'))";
			// select date_time, rf_node_id,power_status  from energy_data where  DATE_FORMAT(date_time, '%Y-%m-%d') between '2011-05-10' and '2011-05-13' and rf_node_id='8' group by day(DATE_FORMAT(date_time, '%Y-%m-%d'))
			 String queyForDoor="SELECT date_time, power_status,DATE_FORMAT(date_time, '%Y-%m-%d')  FROM energy_data where rf_node_id='8'  and date_time >= '"+ dateFroms +"' and date_time <='"+ toDateFroms +"' group by day(date_time)"; 
			
			System.out.println("queyForDoor------"+queyForDoor);
			Connection conntForDoor=ConnectDatabase.getConnection();
			Statement stmtFordoor=conntForDoor.createStatement();
			
			ResultSet rsForDor=stmtFordoor.executeQuery(queyForDoor);

				    String monthName[]={"Jan", "Feb", "March","April","May","June","July","August","Sept","Oct","Nov","Dec"};
				    String monthValue[]={"01","02","03","04","05","06","07","08","09","10","11","12"};	
					ResultSet rs_day_door = stmtFordoor.executeQuery(queyForDoor);
					ArrayList arr_month=new ArrayList();
					ArrayList arr_month_in_day=new ArrayList();
					ArrayList arr_prod=new ArrayList();
					ArrayList arr_count=new ArrayList();
					ArrayList arr_door=new ArrayList();
					ArrayList dooropencount=new ArrayList();
					
				
					
					HashMap hs=new HashMap();
					int doorOpen1=0;
					while(rs_day_door.next())
					{
						
						String m1=rs_day_door.getString("date_time");
						System.out.println("------------date time----------"+m1);
						
						String match01=rs_day_door.getString("power_status");
						System.out.println("vishnu find the data for 101010---"+match01);
						
						String doorOpen=rs_day_door.getString("power_status");
						System.out.println("------------date doorOpen doorOpen----------"+doorOpen);
						
						doorOpen1=Integer.parseInt(doorOpen);
						System.out.println("------------date doorOpen1doorOpen1-====---------"+doorOpen1); 
						arr_door.add(doorOpen);
						System.out.println("------------date doorOpen1doorOpen1-=============================---------"+arr_door); 
						String monthdayss=m1.substring(5,7);
						
						String month_in_days=m1.substring(8,10);
						
						arr_month.add(monthdayss);
						
						arr_month_in_day.add(month_in_days);
						
						arr_prod.add(rs_day_door.getString("power_status"));
					
						String date_count=rs_day_door.getString(3);
						int countstr=getCouuntDoorOpen(date_count);
						dooropencount.add(countstr);
					}
				  rs_day_door.close();
		
				
				int length_m=arr_month.size();
				String monthVal=null;
				String month_in_days=null;
				String prod_month=null;
				String to_count=null;
				
				%>
					var line1 = [
				<%
				int ananan=0;
				for(int j=0;j<length_m;j++)
				{
				
				System.out.println("month="+arr_month.get(j).toString()+"prod="+arr_prod.get(j).toString()+" --"+arr_door.get(j).toString());                                                        
					prod_month=arr_prod.get(j).toString();
				
					int doore_open=Integer.parseInt(arr_door.get(j).toString());
					
					ananan=ananan+doore_open;
					
				
		
		
		System.out.println("  Integer.parseInt(dooropencount.get(j).toString()) "+Integer.parseInt(dooropencount.get(j).toString()));
					out.print(Integer.parseInt(dooropencount.get(j).toString())+",");
				}
				
				%>
				];
				var tickers = [
				<%for(int j=0;j<length_m;j++)
				{
				
				
				System.out.println("date of :"+arr_month_in_day.get(j).toString()+"   month="+arr_month.get(j).toString());
				month_in_days=arr_month_in_day.get(j).toString();
				monthVal=arr_month.get(j).toString();
				//out.print("'"+monthVal+" "+month_in_days+"',");
				
				String sub1=monthVal.substring(1,2);
				System.out.println("=====nmae month==="+monthVal);
				int index=Integer.parseInt(sub1)-1;
				System.out.println("sankalp"+monthName[index]);
				out.print("'"+monthName[index]+" "+month_in_days+"',");
				
				
				
				}
				%>];<%
				
				
				//*****************************//
				

			
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
				ex.getMessage();
		
			}
			
		%>
		
		plot1 = $.jqplot('chart1', [line1], {
			stackSeries: true,
			legend: {
                renderer: $.jqplot.EnhancedLegendRenderer,
				show: true,
				location: 'ne'
			},
			title: 'Data per month stack by user',
			seriesDefaults: {
				renderer: $.jqplot.BarRenderer,
				rendererOptions: {
                    // barPadding: 6,
          // barMargin: 15,
          barWidth: 20
				}
        // shadowAngle: 135
			},
			series: [{
				label: 'User1'
			}],
			axes: {
				xaxis: {
					renderer: $.jqplot.CategoryAxisRenderer,
          ticks: tickers         
				},
				yaxis: {
					min: 0
				}
			}	
		});
		
    line1 = [20, 10];
    line2 = [80, 90];
    plot2 = $.jqplot('chart2', [line1, line2], {
        grid:{drawGridlines:false},
        stackSeries: true, 
        seriesColors: ["#82BC24","#363636"],
        seriesDefaults: {
            renderer: $.jqplot.BarRenderer,
            rendererOptions:{barMargin: 25}, 
            pointLabels:{stackedValue: true},
            yaxis:'y2axis'
        },
        series:[
            {pointLabels:{ypadding: -15}},
            {pointLabels:{ypadding:9000}}
        ],
        axes: {
            xaxis:{renderer:$.jqplot.CategoryAxisRenderer},
            y2axis:{ticks:[0, 100], tickOptions:{formatString:'%d\%'}}
        }
    });

});




</script>


<div id="chart1" class='plot' style="margin-top:20px; margin-left:20px; width:650px; height:300px;"></div>



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

<%!

public int getCouuntDoorOpen(String date)
{
System.out.println("  getCouuntDoorOpen  inside "+date);
		int count1=0;


		try{
			Connection connection = ConnectDatabase.getConnection();				
			Statement statement=connection.createStatement();
			String query_status="select power_status from energy_data where rf_node_id='8' and DATE_FORMAT(date_time, '%Y-%m-%d')='"+date+"'";
			System.out.println(" getCouuntDoorOpen Query "+query_status);
			ResultSet resultSet=statement.executeQuery(query_status);
			String str="";
			while(resultSet.next())
			{
			 str=str+resultSet.getInt("power_status");
			}
			System.out.println(" string "+str);
			Pattern p=Pattern.compile("10");
			Matcher m=p.matcher(str);
			Integer  count=0;
			while(m.find())
			{
				count1++;

			}
			System.out.println("getCouuntDoorOpen "+count1);
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
		return count1;
}

%>
</body> 
</html>
