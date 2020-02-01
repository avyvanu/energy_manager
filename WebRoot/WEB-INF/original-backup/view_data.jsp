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
					
					<div style="text-align:center;width:640px"><h1>List View</h1></div>
						<div class="count" id="countdown"></div>
						<ul  class="main_menu">
					<li class="active" id="home"><a href="addmachine.jsp">Add Machine</a></li>
					<li id="contact" class="active"><a href="view_machine_list.jsp">View Machine</a></li>
					
					<li id="contact" class="active2"><a href="view_data.jsp">View Data</a></li>
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>				</ul>
					<div style="height: 10px;"></div>
					
					<table style="width:680px;">
					
					<tr><td>
					
					<div id="tabs-3" style="width:680px;">

  	 
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td class="gridtd"><div style="max-height: 350px;overflow: auto">
      <table  width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
    
		<td class="white2" id=""  ><b>DateTime</b></td>
		<td class="white2" id=""  ><b>Byte 1</b></td>
		<td class="white2" id=""  ><b>Byte 2</b></td>
		
        
    </tr>
   
    <%
  int a = 1;
    
    try
     
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from sensor_data";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {
 
     int id =d.getInt(1);
    
     String v1=d.getString(3);
     String v2=d.getString(4);
     String v3=d.getString(5);
     String v4=d.getString(2);
    
     int aInt = id;
    
    
      
   
   // System.out.println("aInt document"+ quString2);
    if(aInt >0)
    {
   %> <tr id="<%out.print(a);%>row">
  
   <td id="" class="white" classname="white"><%out.print(v4);%>
 </td>
   <td id="" class="white" classname="white"><%out.print(v2);%>
 </td>
   <td id="" class="white" classname="white"><%out.print(v3);%>
 </td>
 
   </tr>
   <% 
   
    //response.sendRedirect("registration.jsp");
   
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

</table>

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