<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
		<title>ADD MACHINE</title>
		
        <!-- Load styles -->
         <link type="text/css" rel="stylesheet" href="css/contentstyle.css"/>
	   
        <script type="text/javascript" src="popup.js"></script>
        <script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
        <!-- Load scripts -->
		<script language="javascript">
	
		function submit_form()
		{
		document.forms["myform"].submit();
		}
		function getid(obj) {
		document.getElementById('myframe').src='add_machine_profile.jsp?id='+obj.value;
		//alert(obj.value);
		}
	function displaypolicy(obj) {
	
txt = obj.options[obj.selectedIndex].value;

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
	</head>
	<body>
	<%
					String test=(String)session.getAttribute("user_email");
					//System.out.println(test);
                    if(test !=null){
					
					}else
					{
					response.sendRedirect("login.jsp");
					
					}
    %>

<div id="chooser">
 
</div>
		<form method="post" name="myform" action="addroom_value.jsp">
        <div id="main">
        	
            <!-- Name of your company -->
			<div class="company_name1"></div>
            <div class="company_name">INTELLIGENT INDUSTRIAL AUTOMATION</div>
            <!-- END /Name of your company -->

			<div class="main_box">
			
    	        <!-- Countdown -->
				
			
				<!-- Text content -->
				<div id="content">

		
					<div>
					
					<div style="text-align:center;width:640px"><h1>Repository List View</h1></div>
						<div class="count" id="countdown"></div>
						<ul  id="main_menu">
						<li class="active" id="home"><a href="addmachine.jsp">Home</a></li>
						<li class="active2" id="home"><a href="admin.jsp">Admin</a></li>
					<li class="active" id="home"><a href="machine_repository.jsp"  style="font-size:10px">Machine Repository</a></li>
					<li id="contact" class="active"><a href="sensor_repository.jsp">Sensor Repository</a></li>
					
				
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>
				</ul>
					<div style="height: 10px;"></div>
					
					<table style="width:680px;">
					
					<tr><td>
					
					<div id="tabs-3" style="width:680px;">

  	 
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td class="gridtd"><div style="max-height: 350px;overflow: auto">
      <table  width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
       <!--  <td class="white2" style="width:55px;"><b>Select</b></td> -->
		<td class="white2"><b>Machine Name</b></td>
		<td class="white2" id=""  ><b>Model</b></td>
		<td class="white2" id=""  ><b>Description</b></td>
		<td class="white2" id=""  ><b>Specification</b></td>
		<td class="white2" id=""  ><b>Min.Output</b></td>
		<td class="white2" id=""  ><b>Max.Output</b></td>
		<td class="white2" id=""  ><b>Location</b></td>
        
    </tr>
   
    <%
  int a = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from machine_master where machine_status='0'";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {
 
     int machine_id =d.getInt(1);
     String machine_name=d.getString(2);
     String machine_location=d.getString(3);
     String machine_model=d.getString(4);
     String machine_description=d.getString(5);
     String machine_specification=d.getString(6);
     String machine_min_output=d.getString(7);
     String machine_max_output=d.getString(8);
     int aInt = machine_id;
    
     String quString2="select * from machine_location_master where location_id='"+machine_location+"' and status=1";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
         String location=d2.getString(2);
      
   
   // System.out.println("aInt document"+ quString2);
    if(aInt >0)
    {
   %> <tr id="<%out.print(a);%>row">
  <!-- <td id="" classname="white" class="white">
   <input type="radio" onclick="getid(this);" name="chk" id="chk" value="<%out.print(machine_id);%>"/></td> --> 
   <td id="" class="white" classname="white"><a href="r_machine_profile.jsp?mid=<%out.print(machine_id);%>"><%out.print(machine_name);%></a>
   <input type="hidden" value="MC-231" id="appliance" name="appliance"/></td>
   <td id="" class="white" classname="white"><%out.print(machine_model);%>
   <input type="hidden" value="4565464" id="appliance" name="appliance"/></td>
   <td id="" class="white" classname="white"><%out.print(machine_description);%>
   <input type="hidden" value="STEAL MACHINE" id="appliance" name="appliance"/></td>
   <td id="" class="white" classname="white"><%out.print(machine_specification);%>
   <input type="hidden" value="STEAL MACHINE" id="appliance" name="appliance"/></td>
   <td id="" class="white" classname="white"><%out.print(machine_min_output);%>
   <input type="hidden" value="100/H" id="appliance" name="appliance"/></td>
   <td id="" class="white" classname="white"><%out.print(machine_max_output);%>
   <input type="hidden" value="1000/H" id="appliance" name="appliance"/></td>
   <td id="" class="white" classname="white"><%out.print(location);%> (Disabled)
   <input type="hidden" value="WorkShop 1" id="appliance" name="appliance"/></td>
   </tr>
   <% 
   
    //response.sendRedirect("registration.jsp");
   
    }
     }
    a++;  
    }



    
   
    
    
   }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    
    
    
    
    
    
    
    
     %>
    
   
    
    
    

    </table>
    </div>
    </td>
</tr>
 <!--<tr>
  <input type="button" value="" onclick="javascript:parent.content.Popup.showModal('modal2',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="add_buttons" /> 
  <td align="right" colspan="2" class="form2"> <input type="button" value="" onclick="Popup.showModal('modal',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="edit_buttons" />&nbsp;&nbsp;&nbsp;<input type="button" value="" class="del_buttons" onclick="getCheckedRadios();return false;"  />
</td><td></td>
  </tr>-->
</table>
 <!--  <div align="center"><p style="margin-top:0px;" class="reply" >
					<a  onclick="javascript:submit_form();" style="text-align: center;" title="Submit">Submit</a>
					</p></div>-->
	</div>
					
					</td></tr>
					<tr><td>
					
					</td><td>
					
					</td>
					</tr>
					
					
					</table>
						
						
						
						
					    
				
  
					</div>
					

					</div>
                
                </div>
              <div class="shadow_main"></div>
			

			</div>

		</form>
		<div id="modal" style=" background-color:none; padding:25px; font-size:150%; display:none;">
	 <table style="border:3px solid black;" width="31%" cellspacing="0" cellpadding="0" >
        <tbody ><tr>
          <td class="header"><div style="float: left;width:96%;"> ADD MACHINE INFORMATION  </div><div> <a id="TB_closeWindowButton" style="color: #ffffff;text-decoration: none;" href="#" onClick="Popup.hide('modal')">X</a></div></td> 
        </tr>

        <tr>
          <td class="home_box">
             <iframe src="add_machine_profile.jsp" id="myframe" width="500px" height="185px"></iframe>           
          </td>
        </tr>
      </tbody></table>
</div>
			
		
	</body>
</html>