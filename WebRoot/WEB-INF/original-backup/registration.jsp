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
		<title>Sign Up :: INTELLIGENT ENERGY METER</title>
		
        <!-- Load styles -->
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
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
	<body>

<div id="chooser">
 
</div>
		<form method="post" name="myform" action="insert_reg.jsp">
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
					
					
					<table>
					<tr><td colspan="2" style="height:30px;">
					</td></tr>
					<tr><td colspan="2"><h1>Registration</h1>
					<div class="count" id="countdown"></div></td></tr>
					
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
					<div class="txt-box"><input type="text" name="myname" id="myname" value="<%if(name !=null){out.print(name);}%>"></div>
					</td>
					<td>
					<div style="float:left;width:140px;text-align:right;"><p>Email:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input type="text" name="sEmail" id="sEmail" value="<%if(email !=null){out.print(email);}%>"></div> 
					</td></tr>
					<tr><td>
					<div style="float:left;width:70px;text-align:right;"><p>Password:<span class="redTxt" color="red">*</span></p></div>
					<div class="txt-box"><input name="password" id="password" type="password" ></div>
					</td>
					<td>
					<div style="float:left;width:140px;text-align:right;"><p>Confirm Password:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input name="conf_pass" id="conf_pass" type="password"></div>
					</td></tr>
					<tr><td>
					<div style="float:left;width:70px;text-align:right;"><p>Mobile:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input name="mobile" id="mobile" type="text" maxlength="10" value="<%if(mobile !=null){out.print(mobile);}%>"></div>
					</td>
					<td>
					<div style="float:left;width:140px;text-align:right;"><p>Phone:<span class="redTxt">*</span></p></div>
					<div class="txt-box"><input name="phone" id="phone" type="text" maxlength="10" value="<%if(phone !=null){out.print(phone);} session.invalidate();%>"></div>
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
              <div class="shadow_main"></div>
			

			</div>

		</form>
			
	
	</body>
</html>