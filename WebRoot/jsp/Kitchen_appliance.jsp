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







<script type="text/javascript">
function getChoices(form)
{
  var values, options, option, k=0;
  values  = new Array();
  options = form.sel1G8App.options;
  while(option=options[k++])
    if(option.selected)
      values[values.length] = option.value;
  form.txtG1Wattage.value = values.join(' ');
}
</script>




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
					<h4>Click on any of the appliances below to view their home energy efficiency</h4> 
					<br>
					
					<div id="abcd">
					<ul class="bread-crmb">
						
						<li>
						<a  href="GeneralAppliance.jsp">Gen.Appliance</a>
						</li>
						<li>
						<a  href="Dish_Washer.jsp">Dish Washer</a>
						</li>
						<li>
						<a  href="Freezers.jsp">Refrig.& Freezers</a>
						</li>
						<li>
						<a  href="Washer_Dryer.jsp">Washer & Dryer</a>
						</li>
						<li>
						<a  href="LightingCalculator.jsp">Lighting</a>
						</li>
						<li>
						<a  href="Home_Office.jsp">Home Office</a>
						</li>
						<li>
						<a  href="Kitchen_appliance.jsp">Kitchen appliance</a>
						</li>
						<li>
						<a  href="Misc_appliances.jsp">Misc appliances</a>
						</li>
						<!-- li>
						<a  href="#">Kitchen</a>
						</li>
						<li>
						<a  href="#">Lighting</a>
						</li>
						<li>
						<a  href="#">Miscellaneous Devices</a>
						</li>
						<li>
						<a  href="#">Outdoor Devices</a>
						</li>
						<li>
						<a  href="#">Power Tools</a>
						</li>
						<li>
						<a  href="#">Washer and Dryer</a>
						</li -->

					</ul>
					</div>
				</div>
	
	
	
	
<br>
<br>


	<div class="hdr-area">Kitchen Appliances</div><br>

	<!-- progbar.asp removed -->

<!-- Group 9 -->
<form name="frm8" action="Kitchen_appliance.jsp" method="post">
<div class="calcframe">
  <div align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <tbody><tr><td rowspan="11" width="10">&nbsp;</td><td colspan="2" height="5">&nbsp;</td></tr>
        <tr><td>Appliance Type</td>
	     <td>
	          <select name="sel1G8App" onchange="getChoices(this.form)">
	            <option value="20000"="selected">Range - Oven</option>
				<option value="9100">Range - Cook Top - Burner</option>
			  </select>
		</td>
     </tr>
        
        <tr><td>Assumed BTU/hour </td><td><input name="txtG8BTU" value="20000" type="text" id="txtG1Wattage"/></td></tr>
        <tr><td>Average hours per week </td><td><input name="txtG8Hrs" value="1" type="text"/></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td><td><input name="G8Compute" value="Compute" type="submit" style="font-size: 14px;"/><br>
          <input name="check" value="kitchen" type="hidden"/> 
          
          <%
          
          Double btuWatt=0.292875;
          Long btuRound=Math.round(btuWatt);
          
          Double btuwatt2=2665.162499935;
          Long btuRound1=Math.round(btuwatt2);
         
          System.out.println("==========------------==============="+btuRound);
          System.out.println("==========------------==============="+btuRound1);
          
           String assume=request.getParameter("txtG8BTU");
     	  // String tquntty=request.getParameter("txtG1Qty");
      	   String nohourperweek=request.getParameter("txtG8Hrs");
      	   System.out.println("nohourperweek"+nohourperweek);
        
        Double u=0.0;
        Double assum=0.0;
        Double qnty=0.0;
        
        Double show=0.0;
        Double shrs=0.0;
        
        Integer h=0;
        //Long j=0;
        Double k=0.0;
        
        Integer rs=0;
        int abc=0;
        int dcb=0;
        
  
        
        if(assume!=null & nohourperweek!=null)
        {
       	 u=Double.parseDouble(assume);
       	 assum=u*btuWatt;
       	 System.out.println("============assum------------"+assum);
       	 qnty=Double.parseDouble(nohourperweek);
       	  System.out.println("============qnty------------"+qnty);
       	      	 
       	// j=Integer.parseInt(tquntty);
       	//
       	// k=Integer.parseInt(nohourperweek);
        }
        
        
        if(assum !=null & qnty!=null)
        {
        show=(assum*qnty*52)/1000.00;
        System.out.println("----"+show);
        shrs=show*4.00;
     
       
      	}
      
          
        %>
          
          
          
          
          <input name="hid1" type="hidden"/></td> </tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>Therms per Year </td><td><input name="txtG8Therms" type="text" value="<%=Math.round(show) %>"/></td></tr>
        <tr><td>Rs. per Year </td><td><input name="txtG8Dollars" type="text" value="<%=Math.round(shrs) %>"/></td> </tr>
        </tbody>
    </table>
  </div>
</div>
</form>

<script>
</script>
<br>&nbsp;
<br>
&nbsp;


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
          <!--  <iframe src="add_sensor_profile.jsp" id="myframe" width="430px" height="140px"></iframe>  -->            
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
</form>

</body> 
</html>