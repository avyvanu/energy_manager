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
	    <link type="text/css" rel="stylesheet" href="css/subpage.css"/>
        <script type="text/javascript" src="popup.js"></script>
        <script type="text/javascript" src="content.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.gray.css" />
        
        <!-- Load scripts -->
		<script language="javascript">
		
		function del_location()
		{
		var r=confirm("Are you sure ? you want to delete this location  and its all records. ");
if (r==true)
  {
  return true;
  }
else
  {
 return false;
  }
		//alert("Are you sure ? you want to delete this machine and its all records. ");
		//return true;
		}
	
		function submit_form()
		{
		document.forms["myform"].submit();
		}
		function getid(obj) {
		document.getElementById("location_delete").value=obj.value;
		document.getElementById('edit_location_frame').src='edit_sensor_type.jsp?location_id='+obj.value;
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
					
					<div style="text-align:center;width:640px"><h1>ADMIN PANEL</h1></div>
					<div class="member_count" style="float: left;"></div><div class="member_count">
					<%
					String name=(String)session.getAttribute("username");
					//System.out.println(name);
                    if(name !=null){
					out.print(name);
					}
    %>
				</div>
						<div class="count" id="countdown"></div>
						<ul  id="main_menu">
						<li class="active" id="home"><a href="addmachine.jsp">Home</a></li>
						<li class="active" id="home"><a href="admin.jsp">Admin</a></li>
					<li class="active" id="home"><a href="addlocation.jsp">Add Location</a></li>
					<li id="contact" class="active2"><a href="addsensor_type.jsp">Add Sensortype</a></li>
					<!--<li id="contact" class="active"><a href="addsensor.jsp">Add Sensor</a></li>-->
				
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>
				</ul>
					<div style="height: 10px;"></div>
					<div>
					<p>Admin has full control to ADD LOCATION and ADD SENSOR TYPE settings though the Admin Panel. This panel is not open to the regular users or moderators, but only accessable with the admin accounts.</p>
</div>
					<table style="width:640px;">
					
					<tr><td>
					
					
					<div id="tabs-3" style="width:640px;">
					
					<form method="post" name="" action="">	
 <%
  String location_delete=request.getParameter("location_delete");
  //System.out.println(buttonvalue);
  //String mid=request.getParameter("mid");
  
   int y=0;
 if(  location_delete==null)
 {
 location_delete="0";
 }else
 {
    try
    
    {
    
    Connection connection=ConnectDatabase.getConnection();
   
  
   
    Statement stm=connection.createStatement();
    
  
  String quString="update sensor_type set status=1  where sensor_type_id='"+location_delete+"' ";
 System.out.println(quString); 
  //System.out.println("test document"+list[i]+"second value" +list[i+1]+"3rd value" +list[i+2]+"4th value" +list[i+3]+"5th value" +list[i+4]+"6th value" +list[i+5]);
  y= stm.executeUpdate(quString);
 // System.out.println(x);
   
  
  if(y==1)
    {
    
    
    //response.sendRedirect("view_machine_list.jsp");
    }
    
    
    else{
     
    }
  
   }
    catch(Exception e)
    {
     response.sendRedirect("registration.jsp");
    e.printStackTrace();
   }
  }
  
  
  
   %>
  






<table width="100%"  border="0" cellspacing="0" cellpadding="0" id="dd" style="display: none;">
<tr>
    <td class="gridtd"><div style="max-height: 100px;overflow: auto">
      <table  width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
         <td class="white2" style="width:55px;"><b>Select</b></td>
		<td class="white2"><b>Sensor Type</b></td>
		
        
    </tr>
   
    <%
  int at = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from sensor_type where status=0  ";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {

     int location_id =d.getInt(1);
    
     String location_name=d.getString(2);
  
    
     int aInt = location_id;   
       
     
    
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %> 
   <script type="text/javascript"> document.getElementById("dd").style.display = ''; </script>
   <tr id="<%out.print(at);%>row">
   <td id="<%out.print(at);%>td" classname="white" class="white">
   <input type="radio" onclick="getid(this);" name="chk" id="chk" value="<%out.print(location_id);%>"/></td>
   <td id="<%out.print(at);%>td" class="white" classname="white"><%out.print(location_name);%>
   </td>
  
  
   </tr>
   <% 
   
    //response.sendRedirect("registration.jsp");
   
    }
    at++;  
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
<tr>
  <!-- <input type="button" value="" onclick="javascript:parent.content.Popup.showModal('modal2',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="add_buttons" /> -->
  <td align="right" colspan="2" class="form2"> <input type="button" value="" onclick="Popup.showModal('modal3',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="edit_buttons" />&nbsp;&nbsp;&nbsp;<input type="submit" value="" class="del_buttons" onclick="return del_location();"  />
 <input type="hidden" value="0" name="location_delete" id="location_delete"/>
</td><td></td>
  </tr>
</table> 
</form>
 		<form method="post" name="myform" action="addsensortype_value.jsp"> 	 
<table width="100%"  border="0" cellspacing="0" cellpadding="0" >
<tr>
    <td class="gridtd"><div style="max-height: 250px;overflow: auto">
      <table id="table1" width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
        <td class="white2" style="width:55px;"><b>Select</b></td>
		<td class="white2"><b>Sensor Type</b></td>
		
        
    </tr>
   
    
     <tr id="row1" style="display:none;">
        <td ></td>
		<td ></td>
		
		
		</tr>
    

    </table>
    </div>
    </td>
</tr>
<tr>
  <!-- <input type="button" value="" onclick="javascript:parent.content.Popup.showModal('modal2',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="add_buttons" /> -->
  <td align="right" colspan="2" class="form2"> <input type="button" value="" onclick="Popup.showModal('modal',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="add_buttons" />&nbsp;&nbsp;&nbsp;<input type="button" value="" class="del_buttons" onclick="getCheckedRadios();return false;"  />
</td><td></td>
  </tr>
</table>
<div align="center" id="submit" style="display:none;"><p style="margin-top:0px;" class="reply" >
					<a  onclick="javascript:submit_form();" style="text-align: center;" title="Submit">Submit</a>
					</p></div>
</form>
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

		
		<div id="modal" style=" background-color:none; padding:25px; font-size:150%; display:none;">
	 <table style="border:3px solid black;" width="31%" cellspacing="0" cellpadding="0" >
        <tbody ><tr>
          <td class="header"><div style="float: left;width:96%;"> ADD SENSOR TYPE  </div><div> <a id="TB_closeWindowButton" style="color: #ffffff;text-decoration: none;" href="#" onClick="Popup.hide('modal')">X</a></div></td> 
        </tr>

        <tr>
          <td class="home_box">
             <iframe src="add_sensortype_name.jsp" width="250px" height="130px"></iframe>           
          </td>
        </tr>
      </tbody></table>
</div>

<div id="modal3" style=" background-color:none; padding:25px; font-size:150%; display:none;">
	 <table style="border:3px solid black;" width="31%" cellspacing="0" cellpadding="0" >
        <tbody ><tr>
          <td class="header"><div style="float: left;width:96%;"> EDIT SENSOR TYPE   </div><div> <a id="TB_closeWindowButton" style="color: #ffffff;text-decoration: none;" href="#" onClick="Popup.hide('modal3')">X</a></div></td> 
        </tr>

        <tr>
          <td class="home_box">
             <iframe id="edit_location_frame" src="" id="myframe" width="250px" height="130px"></iframe>           
          </td>
        </tr>
      </tbody></table>
</div>
			
		
	</body>
</html>