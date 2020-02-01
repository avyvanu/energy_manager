<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	
	<link rel="stylesheet" type="text/css" href="sign_up.css" />
	<link href="OCT.css" rel="stylesheet" type="text/css" />
	</head>
<body>
	

	<div id="main_header">
	  <div id="wrap"></div>
	</div>
	<div id="main_body">
		<div id="wrap">
			<div id="main_border">
				<div id="side_1_l" ></div>
				<div id="center_1">
										<div id="r_content">
						<a onClick="ajaxSignUp(socialpro_root_url + '/profile/update');" href="javascript:;">Login/Register</a>
					</div>
									</div>
				<div id="side_1_r"></div>
			</div>


<div id="main_content">
  <div id="right_part">
		<div id="fb-root"></div>


<div id="right_border">
	<div id="r_side_2_left_1"></div>
	<div id="r_side_2_center_1" >Member Sign In</div>
	<div id="r_side_2_right_1"></div>
</div>
<div id="right_content_2" class="right_content_sign_in" >
	<form name="loginForm" id="loginForm" action="login_core.jsp" method="POST" onSubmit="">
		<div id="caption">Email : </div>
		<div id="input" style="width:193px; height:25px;">
			<input class="member_login_border" type="text" id="user_email" name="user_email" value="">
		</div>
				<div id="caption" style="padding-top:5px;">Password : </div>
		<div id="input" style="width:193px; height:25px; padding-top:5px;">
			<input class="member_login_border" type="password" id="password" name="password" value="">
		</div>
				<div id="caption" style="padding-top:10px; width:120px; font-weight: normal;">
			<input style="margin-bottom:0;" type="checkbox" id="remember" name="remember" value="1"/>&nbsp;&nbsp;Remember me
		</div>
		<div id="input" style="width:148px; height:25px; float:right; text-align:right; padding-top:5px;">
			<input type="hidden" name="back_url" id="back_url" value=""/>
			<input type="submit" id="sign_in" name="sign_in" value="&nbsp;" style="background: url(btn_signin.jpg) no-repeat; border:0 none; padding:0;"/>
		</div>
		<div class="forgot_pass_caption" id="caption1" >
			<a href="" class="thickbox">Forgot your password?</a>
		</div>
		<div class="signup_caption" id="caption1">
            <a href="registration.jsp">New member? Sign up</a>
		</div>
        <div>
            <div class="clear"></div>
        	<p>&nbsp;</p>
        	   <input type="hidden" id="please_wait_loading_facebook" value="<h1>Please wait...<br> Loading your Facebook basic info...</h1>"/>
        	   <div class="third-party-login">
    <p>Or use any these accounts to log in:</p>
    <center>
    </center>
</div>        </div>
	</form>
</div>


<div id="right_border" style="display:inline;"></div>
<div id="box_search_right">
    <form name="searchBasicForm"  method="get">
      <div id="row_01" style="padding-top:5px;"></div>
        <div id="row_01">
        	<div id="part_left"></div>
            <div id="part_right"></div>
        </div>

        </form>
</div>


  </div>
</div>
						<div class="bottom_content">
				<div id="side" style="background: url(bottom_left.jpg) no-repeat;"></div>
				<div id="center"></div>
				<div id="side" style="background: url(bottom_right.jpg) no-repeat;"></div>
			</div>
					</div>
	</div>
	<div id="main_footer">
		<div id="wrap">
			<div id="footer">
				<div id="f_side" style="background: url(l_footer.jpg) no-repeat;"></div>
				<div id="f_center">
					<p style="padding-top:12px;">
						<a href="">About Us</a>
						<a href="">Contact Us</a>
						<a href="">FAQ</a>
						<a href="">Partners</a>
						<a href="">Privacy Policy</a>
						<a href="" style="border-right:0px;">Term of Services</a>
					</p>
					<p>&copy;2010 abc.com.  All Rights Reserved</p>
				</div>
				<div id="f_side" style="background: url(r_footer.jpg) no-repeat;"></div>
			</div>
		</div>
	</div>
      </body>
</html>
  
