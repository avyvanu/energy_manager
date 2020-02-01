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
		document.getElementById("sensor_delete").value=obj.value;
		document.getElementById('edit_sensor_frame').src='edit_sensor_profile.jsp?machine_id=<%out.print(request.getParameter( "mid" ));%>&sensor_id='+obj.value;
		//alert(obj.value);
		}
		function getCheckedRadios()
		{
		var r=confirm("Are you sure ? you want to delete this machine and its all records. ");
if (r==true)
  {
  return true;
  }
else
  {
 return false;
  }
		
		}
		
		
		function del_sensor()
		{
		var r=confirm("Are you sure ? you want to delete this sensor and its all records. ");
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
		function addloc_value(obj) {
		txt = obj.options[obj.selectedIndex].value;
	
document.getElementById("addloc").value=document.getElementById("loc_mach").value ;

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
	
	String machine_location="";
	
					String test=(String)session.getAttribute("user_email");
					//request.getParameter( "mid" );
					//System.out.println(request.getParameter( "mid" ));
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
			
    	       
				
			
				<!-- Text content -->
				<div id="content">

		
					<div>
					
					<div style="text-align:center;width:640px"><h1>Detail View</h1></div>
						<div class="count" id="countdown"></div>
						<ul id="main_menu">
					<li class="active" id="home"><a href="addmachine.jsp">Add Machine</a></li>
					<li id="contact" class="active2"><a href="view_machine_list.jsp">View Machine</a></li>
					<li id="contact" class="active"><a href="addsensor.jsp" onclick="Popup.showModal('modal',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;">Add Sensor</a></li>
					<li id="contact" class="active"><a href="#">Contact Us</a></li>
					<li id="contact" class="active"><a href="logout.jsp">Logout</a></li>				</ul>
					<div style="height: 10px;"></div>
					  
  <form method="post" name="" action="">	
					<%
  String buttonvalue=request.getParameter("addloc");
  //System.out.println(buttonvalue);
  String mid=request.getParameter("mid");
  
   int x=0;
 if(  buttonvalue==null)
 {
 buttonvalue="0";
 }
   
 if(!buttonvalue.equals("0") )
 {
    try
    
    {
    
    Connection connection=ConnectDatabase.getConnection();
   
  
   
    Statement stm=connection.createStatement();
    
  
  String quString="update machine_master set machine_location='"+buttonvalue+"' where machine_id='"+mid+"' ";
 System.out.println(quString); 
  //System.out.println("test document"+list[i]+"second value" +list[i+1]+"3rd value" +list[i+2]+"4th value" +list[i+3]+"5th value" +list[i+4]+"6th value" +list[i+5]);
  x= stm.executeUpdate(quString);
 // System.out.println(x);
 
   
  
  if(x==1)
    {
    
    
   // response.sendRedirect("view_machine_list.jsp");
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
					<div>
					
					
					
					<table style="margin-left: 180px;margin-top: 10px;">
					
					<tr>
					<td>
					<p>Location:</p>
					</td>
					   <td>
					<div class="select">
            <select id="loc_mach" name="loc_mach" onchange="addloc_value(this);" >
              
              <option value="0">Select</option>
              
                <%
  int at = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from machine_location_master where status=0";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {

     int location_id =d.getInt(1);
     String location_name=d.getString(2);
     
     
     int aInt = location_id;
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %>  <option value="<%out.print(location_id);%>"><%out.print(location_name);%></option>
   
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
    
          
              
            </select>
            
            
            
            
          </div>
					</td></tr>
					</table></div>
					
					<table style="width:680px;">
					<tr><td style="height: 10px;color:red" colspan="2" align="center">
			
			
			</td></tr>
					

					<tr><td>
					
					<div id="tabs-3" style="width:680px;">

  
  

  
 
   
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td class="gridtd"><div style="max-height: 250px;overflow: auto">
      <table  width="100%" border="0" cellspacing="1" cellpadding="4">
    <tr>
       
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
    
          
         
    String quString1="select * from machine_master where  machine_id='"+request.getParameter( "mid" )+"' and machine_status=0 ";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {
 
     int machine_id =d.getInt(1);
     String machine_name=d.getString(2);
      machine_location=d.getString(3);
     String machine_model=d.getString(4);
     String machine_description=d.getString(5);
     String machine_specification=d.getString(6);
     String machine_min_output=d.getString(7);
     String machine_max_output=d.getString(8);
     int aInt = machine_id;
     
     
      String quString2="select * from machine_location_master where location_id='"+machine_location+"' and status=1 ";
  
     Statement stm2=connection.createStatement();
   
     ResultSet d2=stm2.executeQuery(quString2);
       if(d2.next())
       {
         String location=d2.getString(2);
     
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %> <tr id="<%out.print(a);%>row">
        
   <td  class="white" ><a id="m_name1" href="machine_profile.jsp?mid=<%out.print(machine_id);%>"><%out.print(machine_name);%></a>
   </td>
   <td id="model" class="white" ><%out.print(machine_model);%>
   </td>
   <td id="description" class="white" ><%out.print(machine_description);%>
   </td>
   <td id="specification" class="white" ><%out.print(machine_specification);%>
  </td>
   <td id="min_op" class="white" ><%out.print(machine_min_output);%>
   </td>
   <td id="max_op" class="white" ><%out.print(machine_max_output);%>
  </td>
   <td id="machine_location" class="white" ><%out.print(location);%> (Disabled)
   </td>
   </tr>
   <% 
   
    //response.sendRedirect("registration.jsp");
   
     }}
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
<tr>
  <!-- <input type="button" value="" onclick="javascript:parent.content.Popup.showModal('modal2',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;" id="lnkForgot"
 class="add_buttons" /> -->
  <td align="center" colspan="2" class="form2"> <input type="submit" value="" name="button"
 class="submit_buttons" />
</td><td><input type="hidden" value="0" name="addloc" id="addloc" /></td>
  </tr>
</table>






	</div>
					
					</td></tr>
					<tr><td>
					
					</td><td>
					
					</td>
					</tr>
					
					
					</table>
						
						
				</form>		
						
					    
				
  
					</div>
					

					</div>
                
                </div>
              <div class="shadow_main"></div>
			

			</div>

		
	
		
	</body>
</html>