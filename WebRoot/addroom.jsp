<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="author" content="" />
     <link type="text/css" rel="stylesheet" href="contentstyle.css"/>
	 <link type="text/css" rel="stylesheet" href="css/subpage.css"/>
   <script type="text/javascript" src="popup.js"></script>
   
    
     <!-- css for Datepicker -->
	 
<!-- jQuery for Datepicker -->
    

    <script type="text/javascript" src="content.js"></script>
	
	
		
 <style type="text/css">
#Login {
border:0px solid #DFA641;
color:#8A9AA6;
float:left;
height:210px;
position:relative;
width:335px;
}

label  {
color:#4A7195;
font-weight:bold;
}




</style>	 
<script language="javascript">
	function displaypolicy(obj) {
	
txt = obj.options[obj.selectedIndex].value;
//alert(txt);
//document.getElementById("approve").style.display = '';
//document.getElementById("edit").style.display = '';
if (txt !='') {
document.getElementById("type").value=document.getElementById("room_type").value ;
document.getElementById("room_type").disabled=true ;

document.getElementById("tabs-3").style.display = '';
} }</script>
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
	
	<link rel="stylesheet" type="text/css" href="sign_up.css" />
	<link href="OCT.css" rel="stylesheet" type="text/css" />
	<link href="NOV.css" rel="stylesheet" type="text/css" />
	</head>
<body>
	

	<div id="main_header">
	<div id="wrap">
			<div id="header">
				<div id="logo">
					  						  					  					  					
				</div>
				
	
	
				<div id="main_menu">
										<div class="side_menu_l"></div>
										<div id="center_menu">
											<ul id="social_menu" class="social_menu">
							<li>
								<a class="menulink" href="">HOME</a>
			  				</li>
							<li class="sep">&nbsp;</li>
							<li>
								<a class="menuactive" href="addroom.jsp">
									ADD ROOM
							  	</a>
							  	
			  				</li>
							<li class="sep">&nbsp;</li>
							
							
																				</ul>
											<div id="search_form">
							
						</div>
					</div>
					<div class="side_menu_r"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="main_body">
		<div id="wrap">
			<div id="main_border">
				<div id="side_1_l" ></div>
				<div id="center_1">
										<div id="l_content">
						<a href="">Welcome, <b>Mr.ANKUSH SHARMA</b></a>
					</div>
										<div id="r_content">
						<a onClick="ajaxSignUp(socialpro_root_url + '/profile/update');" href="javascript:;">Logout</a>
					</div>
									</div>
				<div id="side_1_r"></div>
			</div>


<div id="main_content">
<div id="centercolumn">

<div id="revisedcontainer">

<form action="addroom_value.jsp" name=xx method="POST">
  <div class="demo">

<div id="tabs">
	
	<div id="tabs-1">
	<fieldset >	
		
<table width="100%"  border="0" cellspacing="0" cellpadding="0" style="border-color: #b4cad5;border: 15px;">
<tr>
    <td>
    
    <table width="100%" border="0" cellspacing="1" cellpadding="4">
   	
	
	<tr>
        
        <td><input type="hidden" name="type" id="type" value="type"/>
        <input type="hidden" name="total_percentage" id="total_percentage" value="0"/>
Room Type<span><font color="red">*</font></span></td>
        <td ><select  id="room_type" name="room_type" onchange="displaypolicy(this);" >
                                   <option  value="">Select</option>
                                   <option  value="Living Room">Living Room</option>
								   <option  value="Dining Room">Dining Room</option>
								   <option  value="Kitchen">Kitchen</option>
								   <option  value="Bed Room">Bed Room</option>
								   <option  value="Bath Room">Bath Room</option>
								   <option  value="Other">Other</option>
                                  </select></td>
        
    </tr>
  
   
   
    </table>
    
    </td>
</tr>

</table>
 
    

<div>
    <span>&nbsp;</span>
	</div>                    
	 </fieldset>
		</div>

	<div id="tabs-3" style="display: none;">
<div id="errormsg3" align="center" style="display:none;" ><font color="red">Please Enter Mandatory Fields in all Tabs!</font></div>
  	 
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td class="gridtd">
      <table id="table1" width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
        <td class="white2" style="width:25px;"><b>Select</b></td>
		<td class="white2"><b>Appliance</b></td>
		<td class="white2" id="nomi"  ><b>Units</b></td>
        
    </tr>
   
    
     <tr id="row1" style="display:none;"><td ></td>
		<td ></td>
		<td ></td>
		
		</tr>
    

    </table>
    
    </td>
</tr>
<tr>
  <!-- <input type="button" value="" onclick="javascript:parent.content.Popup.showModal('modal2',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="add_buttons" /> -->
  <td align="right" colspan="2" class="form2"> <input type="button" value="" onclick="javascript:window.open('nominee.htm','mywindow','width=700px,height=280px,left=350,top=200,screenX=0,screenY=100');return false;" id="lnkForgot"
 class="add_buttons" />&nbsp;&nbsp;&nbsp;<input type="button" value="" class="del_buttons" onclick="getCheckedRadios();return false;"  />
</td><td></td>
  </tr>
</table>
<div align="center">	 <input id="submit" type="submit"   value="" class="submit_buttons" /></div>
	</div>
</div>

</div>
           
  
 		

  </form>
</div>



</div>


<div id="modal" style=" background-color:none; padding:25px; font-size:150%; display:none;">
	 <table style="border:3px solid black;" width="31%" cellspacing="0" cellpadding="0" >
        <tbody ><tr>
          <td class="header"><div style="float: left;width:96%;"> Reason Detail</div><div> <a id="TB_closeWindowButton" style="color: #ffffff;text-decoration: none;" href="#" onClick="Popup.hide('modal'),parent.menu.Popup.hide('modal'),parent.topNav.Popup.hide('modal'),parent.footer.Popup.hide('modal');">X</a></div></td> 
        </tr>
        <tr>
          <td class="home_box">
                        <fieldset class="InfoBox" id="Login">
                               <form>
                <div id="LoginInput">
				 
                	<label for="username">Reason</label>
	              <textarea cols="50" style="width:330px;height:100px;" rows="5"></textarea>
                                                          
                 <br /><br />        
                    
                 <div style="text-align: center;">
	                   <!--<input type="button" value="Submit"  onclick='turnoff()' class="topformbutton" />-->
                      <input id="submit" type="button" onClick="Popup.hide('modal'),parent.menu.Popup.hide('modal'),parent.topNav.Popup.hide('modal'),parent.footer.Popup.hide('modal');" value="" class="submit_buttons" />
	                </div>

                </div>
                </form>
            </fieldset>
          </td>
        </tr>
      </tbody></table>
</div>
<div id="modal2" style=" background-color:none; padding:25px; font-size:150%; display:none;font-size: 150%; position: absolute; left: 0px; z-index: 103; top: 0px; padding: 25px;">
	  <table style="border:3px solid black;" width="31%" cellspacing="0" cellpadding="0" >
        <tbody ><tr>
          <td class="header"><div style="float: left;width:96%;">Room Appliances Information</div><div> <a id="TB_closeWindowButton" style="color: #ffffff;text-decoration: none;" href="#" onClick="Popup.hide('modal2'),parent.menu.Popup.hide('modal'),parent.topNav.Popup.hide('modal'),parent.footer.Popup.hide('modal');">X</a></div></td> 
        </tr>
        <tr>
          <td class="home_box2">
                <IFRAME SRC="nominee.htm"  width="700px" height="280px"></IFRAME>
       </td>
        </tr>
      </tbody></table>        
</div>
 <!--  <div id="right_part" style="float:right;margin-left: 0px;">
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
			<input type="hidden" name="back_url" id="back_url" value="http://www.amightyriver.com/product/member/login.php"/>
			<input type="submit" id="sign_in" name="sign_in" value="&nbsp;" style="background: url(btn_signin.jpg) no-repeat; border:0 none; padding:0;"/>
		</div>
		<div class="forgot_pass_caption" id="caption1" >
			<a href="" class="thickbox">Forgot your password?</a>
		</div>
		<div class="signup_caption" id="caption1">
            <a onclick="ajaxSignUp(socialpro_root_url + '/profile/update');" href="javascript:;">New member? Sign up</a>
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


  </div> -->
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
  
