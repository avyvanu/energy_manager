<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<link type="text/css" rel="stylesheet" href="css/contentstyle.css" />

		<script type="text/javascript" src="popup.js"></script>
		<script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />

		<!-- Load scripts -->
		<script language="javascript">
	
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
			
		

		<div id="chooser">

		</div>

		<div id="main">

			<!-- Name of your company -->
			<div class="company_name1"></div>
			<div class="company_name">
				INTELLIGENT INDUSTRIAL AUTOMATION
			</div>
			<!-- END /Name of your company -->

			<div class="main_box">

				<!-- Countdown -->


				<!-- Text content -->
				<div id="content">


					<div>

						<div style="text-align: center; width: 640px">
							<h1>
								Report List View
							</h1>
						</div>
						<div class="count" id="countdown"></div>
						<ul id="main_menu">
							<li class="active" id="home">
								<a href="addmachine.jsp">Add Machine</a>
							</li>
							<li id="contact" class="active">
								<a href="view_machine_list.jsp">View Machine</a>
							</li>

							<li id="contact" class="active"><a href="live_dashboard.jsp">Live Dashboard</a></li>
							<li id="contact" class="active2">
								<a href="reportbysensor_type.jsp">Report</a>
							</li>
							<li id="contact" class="active">
								<a href="logout.jsp">Logout</a>
							</li>
						</ul>
						<div style="height: 10px;"></div>

                                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												 <td>Machine Name:&nbsp;<span style="color: #009999;"><%out.print(request.getParameter( "machine_name" ));%></span></td>
												 <td>Sensor Name:&nbsp;<span style="color: #009999;"><%out.print(sensor_name);%></span></td>
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
												<td class="gridtd">
													<div style="max-height: 320px; overflow: auto">
														<table width="100%" border="0" cellspacing="1"
															cellpadding="4">
															<tr>


																<td class="white2" id="">
																	<b>Product Count</b>
																</td>
																<td class="white2" id="">
																	<b>Power Consumed</b>
																</td>
<td class="white2" id="">
																	<b>Raw Material Status</b>
																</td>
																<td class="white2" id="">
																	<b>Power Status</b>
																</td>

															</tr>

															<%
																int a = 1;

																try

																{
																	String sensor_id = request.getParameter("machine_id");
																	String from = request.getParameter("from");
																	String to = request.getParameter("to");
																	String sensor_typename = request.getParameter("sensor_typename");
																	String machine_name = request.getParameter("machine_name");

																	SimpleDateFormat dateFormat = new SimpleDateFormat("dd-mm-yyyy");
																	SimpleDateFormat dateFormat2 = new SimpleDateFormat(
																			"yyyy-mm-dd");
																	Date date = dateFormat.parse(from);
																	String from_date = dateFormat2.format(date);

																	Date date2 = dateFormat.parse(to);
																	String to_date = dateFormat2.format(date2);

																	Connection connection = ConnectDatabase.getConnection();
																	
																
																	//sensor_id.trim();
																	
																	System.out.println(sensor_id+"ll");
																	System.out.println(sensor_id.length());
																	
																	String quString1 = "select *  from  energy_data where rf_node_id='2' and DATE_FORMAT(date_time,'%Y-%m-%d') between '"
																			+ from_date + "' and '" + to_date + "' ";
						
																	//	System.out.println("data marinda"+quString1);	
																		
																	System.out.println(quString1);
																	Statement stm1 = connection.createStatement();

																	ResultSet d = stm1.executeQuery(quString1);
																	//boolean ds=d.next();
																	//System.out.println(ds);
																	while(d.next()) {

																		int id = d.getInt(1);
																		System.out.println("id is that" + id);
																		String v2 = d.getString(2);
																		String v3 = d.getString(3);
																		String v4 = d.getString(4);
																		String v5 = d.getString(5);
                                                                       String v6=d.getString(6);
                                                                         String v7=d.getString(7);
																		int aInt = id;

																		// System.out.println("aInt document"+ quString2);
																		if (aInt > 0) {
															%>
															<tr id="<%out.print(a);%>row">

																<td id="" class="white" >
																	<%
																		out.print(v4);
																	%>
																</td>
																<td id="" class="white" >
																	<%
																		out.print(v5);
																	%>
																</td>
<td id="" class="white" >
																	<%
																	if(v6.equals("1"))
																	{
																	
																	
																		
																	%>
																	<img src="green_button.png" />
																	<%}
																	
																	
																	else{ %>
																	<img src="RedButtonA.jpg" />
																	
																	<%} %>
																</td>
																
																<td id="" class="white" >
																	<%
																	if(v7.equals("1"))
																	{
																	
																	
																		
																	%>
																	<img src="green_button.png" />
																	<%}
																	
																	
																	else{ %>
																	<img src="RedButtonA.jpg" />
																	
																	<%} %>
																</td>

															</tr>
															<%
																//response.sendRedirect("registration.jsp");

																		}else{
																	%><tr id="noresult">

																<td id="" class="white" colspan="2" >
																	---No Result---
																</td>
																
															</tr>	
																		
																<%		
																		
																		}

																		a++;
																	}

																} catch (Exception e) {
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





	</body>
</html>