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
        
<title>Sign Up :: INTELLIGENT ENERGY METER</title>
		
        <!-- Load styles -->
		
        
        <!-- Load scripts -->
		<style > 
		.redTxt{
		color: red;
		font-size:small;
		}</style>
		<script>
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
    var j_username = document.getElementById("myname");
    var sEmail = document.getElementById("sEmail");
    var j_password = document.getElementById("password");
    var conf_pass = document.getElementById("conf_pass");
    var mobile = document.getElementById("mobile");
    var phone = document.getElementById("phone");     
    document.getElementById("error").innerHTML ='';
    
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	var re5digit=/^\d{0,10}$/;
    
   
if(trimAll(j_username.value)== '')
{
document.getElementById("error").innerHTML = "Name cannot be empty";
	//alert("Username cannot be empty");
	j_username.focus();
	return false;
}
else if(trimAll(sEmail.value)== '')
{
	//alert("Password cannot be empty");
	document.getElementById("error").innerHTML = "Email cannot be empty";
	sEmail.focus();
	return false;

}
 if(trimAll(sEmail.value)!=''){
		var r=emailPattern.test(trimAll(sEmail.value)); 
			if(r == false){
			document.getElementById("error").innerHTML = "Enter valid Email Address";
			
			sEmail.focus();
			return false;
			}
		}


 if(trimAll(j_password.value)== '')
{
	//alert("Password cannot be empty");
	document.getElementById("error").innerHTML = "Password cannot be empty";
		j_password.focus();
	return false;

}
else if(trimAll(conf_pass.value)== '')
{
	//alert("Password cannot be empty");
	document.getElementById("error").innerHTML = "Confirm Password cannot be empty";
		conf_pass.focus();
	return false;

}else if(trimAll(conf_pass.value)!= trimAll(j_password.value))
{
	//alert("Password cannot be empty");
	document.getElementById("error").innerHTML = "Confirm Password should be equal to Password";
		conf_pass.focus();
	return false;

}else if(trimAll(mobile.value)== '')
{
	//alert("Mobile Number cannot be empty");
	document.getElementById("error").innerHTML = "Mobile Number cannot be empty";
		mobile.focus();
	return false;

}
else if(trimAll(phone.value)== '')
{
	//alert("Mobile Number cannot be empty");
	document.getElementById("error").innerHTML = "Phone Number cannot be empty";
		phone.focus();
	return false;

}else
{
submit_form();
}


//return true;
}

		
		
		function submit_form()
		{
		document.forms["myform"].submit();
		}
		</script>
		
</head> 
 
<body id="index" onload="new ElementMaxHeight()"; oncontextmenu="return false;" ondragstart = "return false;" onselectstart = "return false;"> 
<form method="post" name="myform" action="insert_reg.jsp">
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
									<li><a href="addmachine.jsp">Home</a></li> 
									<li><a href="admin.jsp"><span>Admin</span></a></li> 
									<li><a href="addlocation.jsp">Add Location</a></li> 
									<li><a href="addsensor_type.jsp">Add Sensortype</a></li> 
									<li ><a href="#">Contact us</a></li> 
									<li><a href="#" rel="ddsubmenu4">Logout</a></li> 
									
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
							Registration
						</h1>
                     <ul class="bread-crmb">
						
						

					</ul>
					</div>
                       
					 <div id="main">
        	
			<div class="main_box">
			
				<table style="margin-left: 120px;">
					<tr><td colspan="2" style="height:30px;">
					</td></tr>
					
					<tr><td colspan="2" style="height:30px;">
					<div style="text-align:center;color:#f11a1d;" id="error">
					<%
					
					
										String test=(String)session.getAttribute("Erromessage");
										String name=(String)session.getAttribute("name");
										String email=(String)session.getAttribute("email");
										String mobile=(String)session.getAttribute("mobile");
										String phone=(String)session.getAttribute("phone");
					
					//System.out.println(test);
       if(test !=null){




//request.setAttribute("error","Invalid Email/Password");
 out.print(test);
 //session.invalidate();
} %>
					</div>
					</td></tr>
					<tr><td>
					<div style="float:left;width:70px;text-align:right;"><p>Name:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input type="text" class="text_box" name="myname" id="myname" value="<%if(name !=null){out.print(name);}%>"></div>
					</td>
					<td>
					<div style="float:left;width:140px;text-align:right;"><p>Email:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input type="text" class="text_box" name="sEmail" id="sEmail" value="<%if(email !=null){out.print(email);}%>"></div> 
					</td></tr>
					<tr><td>
					<div style="float:left;width:70px;text-align:right;"><p>Password:<span class="redTxt" color="red">*</span></p></div>
					<div class="txt-box"><input class="text_box" name="password" id="password" type="password" ></div>
					</td>
					<td>
					<div style="float:left;width:140px;text-align:right;"><p>Confirm Password:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input  class="text_box" name="conf_pass" id="conf_pass" type="password"></div>
					</td></tr>
					<tr><td>
					<div style="float:left;width:70px;text-align:right;"><p>Mobile:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input class="text_box" name="mobile" id="mobile" type="text" maxlength="10" value="<%if(mobile !=null){out.print(mobile);}%>"></div>
					</td>
					<td>
					<div style="float:left;width:140px;text-align:right;"><p>Phone:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input class="text_box" name="phone" id="phone" type="text" maxlength="10" value="<%if(phone !=null){out.print(phone);} session.invalidate();%>"></div>
					</td></tr>
					</table>
						<tr><td>
					
					</td>
					<td>
					
					<div style="text-align:right;width:640px"><p style="margin-top: 20px;" class="reply">
					<a target="_blank" onclick="javascript:validateUser();" title="Create Account">Create Account</a>
					</p></div>
					</td></tr>
				
					    

                
                </div>
            
		
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

					