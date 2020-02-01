<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
function submit_form()
		{
		alert();
		
		}
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
-->
</style> 
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script> 
        
	
</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 
  <form method="post" name="myform" action="addunitcost_value.jsp">
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
									<li><a href="#" rel="ddsubmenu4" >Dashboard</a></li> 
									<li><a href="contact.html">Contact us</a></li> 
									<li><a  href="logout.jsp">Logout</a></li> 
									
								</ul> 

                                 <br class="clear" /> <br class="clear" /> 
                              </div>
                     <ul id="ddsubmenu1" class="ddsubmenustyle">
                    			<li><a href="solutions.html">Solutions</a></li> 
                                <li><a href="#">Energy Management</a>
                                <ul>
                               <li style="text-align:left"><a href="energy_management.html">Energy Management</a></li>
                               <li style="text-align:left"><a href="building_power_management_solution.html">Building Power Management</a></li>
                               <li style="text-align:left"><a href="data_centre_energy_management.html">Data Centre Energy Management</a></li>
                                </ul>                                
                                </li>  
                                <li><a href="security_management.html">Security Management</a> </li>
                                 <li><a href="#">Manufacturing Execution Automation</a> 
                                <ul>
                                    <li><a href="Manufacturing_Execution_Automation.html">Manufacturing Execution Automation</a></li>
                                	<li><a href="ware_house_management.html">Warehouse Management</a></li>
                                </ul>
                                </li>
                                <li><a href="smart_grid.html">Smart Grid</a></li>
                    </ul> 
                    <ul id="ddsubmenu2" class="ddsubmenustyle"> 
                                <li><a href="managed_services.html">Managed Services</a></li>
                                <li><a href="building_management_services.html">Building Management Services</a>  </li>
                                <li><a href="enterprise_security_management_services.html">Enterprise Security Management Services</a> </li>
                                <li><a href="manufacturing_execution_services.html">Manufacturing Execution services</a> </li>
                                <li><a href="installation_services.html">Installation Services</a> </li>
                                <li><a href="Fulfillment_services.html">Fulfillment Services</a>        </li>                         
                    </ul> 
 					 <ul id="ddsubmenu3" class="ddsubmenustyle"> 
                                <li><a href="about.html">About us</a></li> 
                                <li><a href="investors.html">Investors</a> </li>
                                <li><a href="press.html">Press</a> </li>
                                <li><a href="management_team.html">Management Team</a> </li>
                    </ul> 
 					<ul id="ddsubmenu4" class="ddsubmenustyle"> 
                                <li><a href="live_dashboard.jsp">Live Dashboard</a></li> 
                                <li><a href="assessment_dashboard.jsp">Assessment Dashboard</a> </li>
                               
                    </ul> 
                    <ul id="ddsubmenu5" class="ddsubmenustyle"> 
                                <li><a href="careers.html">Careers</a></li> 
                                <li><a href="contact.html">Contact Us</a> </li>
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
							Unit Cost
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
			
				<div id="content">

		
					<div>
					
					
					<table style="width: 640px;">
					
					<tbody><tr><td>
					
					<div style="width: 640px;" id="tabs-3">
  	 
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr><td style="padding-top: 10px;text-align: right;" width="40%">
					<p>Unit Cost:<span style="color: red;">*</span></p></td>
					 <td style="padding-top: 10px;">
         <div style="float: left;" class="txt-box">
          <%
           
            
            PreparedStatement ps=null,ps1=null;
		    Statement st=null,st1=null;
	        ResultSet rs=null, rs1=null;
	        
	        String sql="SELECT * FROM unitcost_master order by id  desc limit 1 ";
	        
	        try
	        {
	        
           		 Connection con=ConnectDatabase.getConnection();
           		 ps=con.prepareStatement(sql);
           		    
           		 System.out.println(ps);
           		
			     rs=ps.executeQuery(); 
			    
            }
            catch(Exception ex)
            {
            	System.out.println("tHE EXCEPTION IS  :"+ex);
            }
            
            
             %>
            
            
           
             <%
         if(rs.next())
           {
            %>
            <input type="text" id="unitcost" class="text_box" size="20" name="unitcost" autocomplete="off" value="<%=rs.getString(2) %>" />
               <%
           }else {
            %>
            <input type="text" id="unitcost" class="text_box" size="20" name="unitcost" autocomplete="off" value="" />
               <%
           }
           rs.close();
           ps.close();
            %>
        
        </div>
    </td>
					
					 </tr>
</tbody></table>


 <div style="height: 15px;"></div>
 <div style="height: 15px;"></div>

<div align="center"><p class="reply" style="margin-top: 0px;">
					<a title="Submit" style="text-align: center;" onclick="javascript:document.forms['0'].submit();;">Submit</a>
					</p></div>
	</div>
					
					</td></tr>
					<tr><td>
					
					</td><td>
					
					</td>
					</tr>
					
					
					</tbody></table>
					
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
  </form>
</body> 
</html>

