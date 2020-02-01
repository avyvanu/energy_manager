<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
	<body>
<%
					String email=(String)session.getAttribute("user_email");
					//System.out.println(email);
                    if(email !=null){
                    response.sendRedirect("addmachine.jsp");
					
					}
    %>
<div id="chooser">
 
</div>
		<form name="loginForm" id="loginForm" action="login_core.jsp"  method="post" autocomplete="off">
        <div id="main">
        	
            <!-- Name of your company -->
			<div class="company_name1"></div>
            <div class="company_name">INTELLIGENT ENERGY METER</div>
            <!-- END /Name of your company -->

			<div class="main_box">
			
    	        <!-- Countdown -->
				
			
				<!-- Text content -->
				<div id="content">

		
					
					<div>
					<div style="text-align:center;width:640px"><h1>Login</h1></div>
						<div class="count" id="countdown"></div>
					
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
					<div class="txt-box2"><input type="text" id="user_email" name="user_email" /></div>
					</td></tr>
					<tr><td>
					<p>Password:</p>
					</td><td>
					<div class="txt-box2"><input name="password" id="password" type="password" /></div>
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
					

					</div>
                
                </div>
              <div class="shadow_main"></div>
			

			</div>

		</form>
			
		
	</body>
</html>



