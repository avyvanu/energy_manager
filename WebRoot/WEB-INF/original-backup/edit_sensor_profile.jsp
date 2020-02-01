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
<html>

<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="author" content="" />
     <link type="text/css" rel="stylesheet" href="css/contentstyle.css"/>

     
	
     
	<title>Room Appliances Information</title>
<script type="text/javascript">
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

 function validate()
{
    var s_name = document.getElementById("s_name");
    
    var s_type = document.getElementById("s_type");
    document.getElementById("error").innerHTML ='';
   
if(trimAll(s_name.value)== '')
{
document.getElementById("error").innerHTML = "Sensor Name cannot be empty";
	//alert("Machine Name cannot be empty");
	s_name.focus();
	return false;
}
else if(trimAll(s_type.value)== '0')
{
	//alert("Model cannot be empty");
	document.getElementById("error").innerHTML = "Select Sensor Type";
	s_type.focus();
	return false;

}
if(trimAll(s_name.value) !='' && trimAll(s_type.value) !='')
{
src="redirect.jsp?mid=";
///alert(src);
src= src+ <%out.print(request.getParameter( "machine_id" ));%> ;
//alert(src);
window.top.location.href =src;
parent.Popup.hide('modal3');
}

//return true;
}

</script>

	
</head>

<body  style="background-image:images/bg_topbar.gif;">
<%
					String test=(String)session.getAttribute("user_email");
					//System.out.println(test);
                    if(test !=null){
					
					}else
					{
					response.sendRedirect("login.jsp");
					
					}
    %>


 <form  name="" onSubmit="return validate();" action="edit_sensor_pro_action.jsp">
    
		 <fieldset>	
		 <legend> Sensor Information</legend> 
		 <div style="text-align:center;color:#f11a1d;" id="error"></div> 
		 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td >
    
    <table  border="0" cellspacing="1" cellpadding="4">
     <%
  int b = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String query="select * from sensor_master where  sensor_id='"+request.getParameter( "sensor_id" )+"' ";
    Statement stm_s=connection.createStatement();
   
    ResultSet d_s=stm_s.executeQuery(query);
     while (d_s.next()) {
     
     int sensor_id =d_s.getInt(1);
     int sensor_type_id =d_s.getInt(2);
     String sensor_name=d_s.getString(3);
     
     int bInt = sensor_id;
     
   //   System.out.println("aInt document"+ aInt);
    if(bInt >0)
    {
   %> 
    <tr>
         <td>Sensor Name<span><font color="red">*</font></span></td>
        <td > 
<input type="text" class="text" name="s_name" id="s_name" 
 value="<%out.print(sensor_name);%>" style="" maxlength="100" />
 <input type="hidden" class="text" name="s_id" id="s_id" 
 value="<%out.print(sensor_id);%>"  />
 </td>
        
         <td>Type<span><font color="red">*</font></span></td>
        <td > 
        <select name="s_type" id="s_type" > 
         <option value="0">--Select--</option>
      
                <%
  int a = 1;
    
    try
    
    {
 //   Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from sensor_type";
    Statement stm1=connection.createStatement();
   
    ResultSet d=stm1.executeQuery(quString1);
     while (d.next()) {

     int location_id =d.getInt(1);
     String location_name=d.getString(2);
     
     String sensorvalue=location_name;
     int aInt = location_id;
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
    
    if(sensor_type_id==location_id)
   {
   
    
    
    
    
   %>  
   
   <option selected="selected" value="<%=sensorvalue%>"><%=location_name%> </option>
   
  <%}
  
  else{ %>
   
   
   
   
   <option value="<%=sensorvalue%>"><%=location_name%></option>
  
   
   
   <% 
   }
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
    
          
        








</select>

 </td>




       
    </tr>
    
      
    
	
	</table></td>
	
   <% 
   
    //response.sendRedirect("registration.jsp");
   
    }
   
    }



    
   
    
    
   }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    
    
    
    
    
    
    
    
     %>
    
   
	
	
	
	
	
	
	
        
    </tr></table>
<table width='100%'>
  
  
  <tr>
  
  <td align="center" colspan="2" class="form2"> <input type="submit" value="" onclick="javascript:"
 class="save_buttons" />&nbsp;&nbsp;&nbsp;<input type="reset" value="" class="cancel_buttons" />
</td>
  </tr></table>
  
</fieldset>	
</form>
</body>
</html>