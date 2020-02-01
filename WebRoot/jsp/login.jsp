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
        
	<!-- Type your title here -->
		<title>Login!!!</title>
		
        <!-- Load styles -->
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
        <!-- Load scripts -->
		<script>
		function submit_form()
		{
		document.forms["loginForm"].submit();
		}
		
		 function trimAll(str)
{
	/*************************************************************
	Input Parameter :str
	Purpose         : remove all white spaces in front and back of string
	Return          : str without white spaces    
	***************************************************************/

	//check for all spaces
	var objRegExp =/^(\s*)$/;
	if (objRegExp.test(str))
	{
		str = str.replace(objRegExp,''); 
		if (str.length == 0)
		return str; 
	} 

	// check for leading and trailling spaces
	objRegExp = /^(\s*)([\W\w]*)(\b\s*$)/;
	if(objRegExp.test(str))
	{
		str = str.replace(objRegExp, '$2');
	}
	return str;
}

 function validateUser()
{
    var j_username = document.getElementById("user_email");
    
    var j_password = document.getElementById("password");
    document.getElementById("error").innerHTML ='';
   
if(trimAll(j_username.value)== '')
{
document.getElementById("error").innerHTML = "Email cannot be empty";
	//alert("Username cannot be empty");
	j_username.focus();
	return false;
}
else if(trimAll(j_password.value)== '')
{
	//alert("Password cannot be empty");
	document.getElementById("error").innerHTML = "Password cannot be empty";
		j_password.focus();
	return false;

}
if(trimAll(j_password.value) !='' && trimAll(j_username.value) !='')
{


submit_form();
}

//return true;
}
		</script>
	
		
	
</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 
<%
					String email=(String)session.getAttribute("user_email");
					//System.out.println(email);
                    if(email !=null){
                    response.sendRedirect("addmachine.jsp");
					
					}
    %>
	<div id="header_tall"> 
	<form name="loginForm" id="loginForm" action="login_core.jsp"  method="post" autocomplete="off">
		<div id="main"> 
		
					
		</form>
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
									<li><a href="#">Home</a></li> 
									<li><a href="#"><span>Admin</span></a></li> 
									<li><a href="#">Add Location</a></li> 
									<li><a href="#">Add Sensortype</a></li> 
									<li ><a href="#">H.E.M.</a></li> 
									<li><a href="login.jsp" rel="ddsubmenu4">Login</a></li> 
									
								</ul> 

                                 <br class="clear" /> <br class="clear" /> 
                              </div>
                  
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
							Login
						</h1>
                     
					</div>
                       
					 <div id="main">
        	
			<div class="main_box">
			
				<table style="width:640px;margin-left: 150px;">
					<tr><td colspan="2" style="height:30px;">
					<div style="margin-left:100px;color:#f11a1d;" id="error">
					<%
					
					
										String test=(String)session.getAttribute("Erromessage");
					
					//System.out.println(test);
       if(test !=null){




//request.setAttribute("error","Invalid Email/Password");
 out.print(test);
 session.invalidate();
}


				
					
      %></div>
					</td></tr>
					
					<tr>
					<td>
					<p>Email:</p>
					</td><td>
					<div class="txt-box2"><input type="text"  size="20" id="user_email" class="text_box" name="user_email"  autocomplete="off" value="" /></div>
					</td></tr>
					<tr><td>
					<p>Password:</p>
					</td><td>
					<div class="txt-box2"><input name="password" id="password"  size="20" autocomplete="off" value="" class="text_box" type="password" /></div>
					</td>
					</tr>
					<tr><td>
					
					</td><td>
					<p style="margin-top: 20px;" class="reply" >
					<a  onclick="javascript:return validateUser();" style="text-align: center;" title="Login">Login</a>
					</p>
					</td>
					</tr>
					<tr>
					<td colspan="2">
					<a class="thickbox" href="" style="font-size:13px;line-height:25px;color:#1689C3;text-decoration:none;">Forgot your password?</a>
					
					<a href="registration.jsp" style="font-size:13px;line-height:25px;color:#1689C3;text-decoration:none;margin-left:124px;">New member? Sign up</a>
					</td></tr>
					
					</table>

                
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
 <td align="center"><strong><p>Copyright 2010 Wifinity | <a href="#">Contect us</a></p></strong></td>
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

					



