<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Login</title>
	
	<style>
	body {
background:url("bg_website2.jpg") ;
color:#5E5E5E;

margin:0;
padding:0;
text-align:center;
}

.txt-box {
background:url("login-box-bg.gif") no-repeat scroll 0 0 transparent;
height:21px;
overflow:hidden;
padding:3px 5px;
width:224px;
}
.txt-box input {
background:none repeat scroll 0 0 #FFFFFF;
border:medium none;
color:#666666;
font-family:Arial,Helvetica,sans-serif;
font-size:12px;
width:217px;
}
input:focus{  outline:none;}
#caption1 {
color:#6A6C85;
display:inline;
float:left;
height:25px;
line-height:25px;
overflow:hidden;
}

.forgot_pass_caption {
font-size:13px;
padding-top:5px;
width:160px;
}

.signup_caption {
font-size:13px;
margin:0;
padding-top:5px;
width:274px;
text-align:right;
}


#caption1 a {
color:#1689C3;
}

a, a:visited, a:focus {
outline:0 none;
}

a, a:visited {
border:0 none;
text-decoration:none;
}

a, a:visited, a:focus {
outline:0 none;
}
</style>
	</head>
<body>
	
<table style="background-image:url(copy.png);background-repeat:no-repeat;height:756px;width:1020px;" align="center">
<!--<td class="left"></td>
<td class="center"></td>
<td class="right"></td>
</tr>
<tr>
<td class="left_vert"></td>
<td class=""></td>
<td class="right_vert"></td>  style="background-color:#96989a;"  -->
<tr>

<td class="" style="" >
<form name="loginForm" id="loginForm" action="login_core.jsp" method="POST" onSubmit="">
<table style="padding:0px 0px 0px 285px;">

<tr>
<td style="width:450px;">
<div style="color:#FFFFFF;font-size:24px;float:left;margin:0 auto;text-shadow:0 -1px #121212;width:200px;">EMAIL:</div> 
<div class="txt-box"><input type="text" id="user_email" name="user_email"></div>

</td>
</tr>
<tr>
<td>
<div style="color:#FFFFFF;font-size:24px;float:left;margin-left:0px;text-shadow:0 -1px #121212;width:200px;">PASSWORD:</div> 
<div class="txt-box"><input  type="password" id="password" name="password"></div>
</td>
</tr>
<tr>
<td>
<div style="color:#FFFFFF;font-size:24px;float:left;margin-left:0px;text-shadow:0 -1px #121212;width:200px;">&nbsp;</div> 
<div class="" style="margin-left:350px;">
<input type="hidden" name="back_url" id="back_url" value=""/>
<input type="submit" id="sign_in" name="sign_in" value="&nbsp;" style="background: url(loginblue2.png) no-repeat; height:35px;width:85px; border:0 none; padding:0;"/>
</div>
</td>
</tr>
<tr>
<td>
<div class="forgot_pass_caption" id="caption1">
			<a href="" class="thickbox">Forgot your password?</a>
		</div>
		<div class="signup_caption" id="caption1">
            <a href="registration.jsp">New member? Sign up</a>
		</div>

</td>
</tr>
<tr><td style="height: 20px;"></td></tr>
</table>

</form>

</td></tr>


</table>
      </body>
</html>
  
