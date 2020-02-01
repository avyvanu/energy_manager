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
     <link type="text/css" rel="stylesheet" href="../css/contentstyle.css"/>
	
     
	
     
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
    var m_name = document.getElementById("m_name");
    
    var model = document.getElementById("model");
    document.getElementById("error").innerHTML ='';
   
if(trimAll(m_name.value)== '')
{
document.getElementById("error").innerHTML = "Sensor Type cannot be empty";
	//alert("Machine Name cannot be empty");
	m_name.focus();
	return false;
}

if(trimAll(m_name.value) !='' )
{
src="redirect_to_addsensor_type.jsp";
///alert(src);
//src= src+ <%out.print(request.getParameter( "machine_id" ));%> ;
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


 
         <form  name="nominee" onSubmit="validate();" action="edit_sensortype_action.jsp">
		 <fieldset>	
		 <legend>Sensor Type Information</legend>  
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
    
          
         
   String query="select * from sensor_type where sensor_type_id='"+request.getParameter( "location_id" )+"' ";
    Statement stm_s=connection.createStatement();
   
    ResultSet d_s=stm_s.executeQuery(query);
     while (d_s.next()) {
     
   int location_id =d_s.getInt(1);
    /// int sensor_type_id =d_s.getInt(2);
     String location_name=d_s.getString(2);
     
     int bInt = location_id;
     
   //   System.out.println("aInt document"+ aInt);
    if(bInt >0)
    {
   %> 
    <tr>
         <td>Sensor Type<span><font color="red">*</font></span></td>
        <td > 
<input type="text" class="text" name="m_name" id="m_name" 
 value="<%=location_name%>" style="" maxlength="100" />
  <input type="hidden" name="type_id" id="type_id" 
 value="<%=location_id%>" style="" maxlength="100" />
 </td>
        
       
    </tr>
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
	

	
	</table></td>
        
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