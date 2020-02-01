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
	
     
	
     
	<title>Edit Machine Information</title>
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
document.getElementById("error").innerHTML = "Machine Name cannot be empty";
	//alert("Machine Name cannot be empty");
	m_name.focus();
	return false;
}
else if(trimAll(model.value)== '')
{
	//alert("Model cannot be empty");
	document.getElementById("error").innerHTML = "Model cannot be empty";
	model.focus();
	return false;

}

if(trimAll(m_name.value) !='' && trimAll(model.value) !='')
{
//window.top.location.reload();

src="redirect.jsp?mid=";
///alert(src);
src= src+ <%out.print(request.getParameter( "machine_id" ));%> ;
//alert(src);
window.top.location.href =src;
parent.Popup.hide('modal2');

}
//return true;
}


       
  //window.close();
	//parent.Popup.hide('modal');



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


 
         <form  name="" onSubmit="return validate();" action="edit_machine_pro_action.jsp">
		 <fieldset>	
		 <legend> Machine Information</legend>  
		 		<div style="text-align:center;color:#f11a1d;" id="error"></div>
		 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td >
    
   
    <table  border="0" cellspacing="1" cellpadding="4">
     <%
  int a = 1;
    
    try
    
    {
    Connection connection=ConnectDatabase.getConnection();
    
          
         
    String quString1="select * from machine_master where  machine_id='"+request.getParameter( "machine_id" )+"' ";
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
     
   //   System.out.println("aInt document"+ aInt);
    if(aInt >0)
    {
   %> 
     <tr>
         <td>Name<span><font color="red">*</font></span></td>
        <td > 
<input type="text" class="text" name="m_name" id="m_name" 
 value="<%out.print(machine_name);%>" style="" maxlength="100" />
 </td>
        
         <td>Model<span><font color="red">*</font></span></td>
        <td > 
<input type="text" class="text" name="model" id="model" 
 value="<%out.print(machine_model);%>" style="" maxlength="100" />
 </td>




       
    </tr>
      <tr>
         
        <td>Description</td>
        <td > 
                <input type="text" class="text"  name="description" id="description" value="<%out.print(machine_description);%>" />
                </td>
                <td>Specification</td>
        <td > 
<input type="text" class="text" name="specification" id="specification" 
 value="<%out.print(machine_specification);%>" style="" maxlength="100" />
 </td>
        
       
    </tr>
    <tr>
         <td>Min. Output</td>
        <td > 
<input type="text" class="text" name="min_op" id="min_op"
 value="<%out.print(machine_min_output);%>" style="" maxlength="100" />
 </td>  
        
        <td>Max. Output</td>
        <td > 
                <input type="text" class="text"  name="max_op" id="max_op" value="<%out.print(machine_max_output);%>" />
               <input type="hidden" class="text"  name="machine_id" id="machine_id" value="<%out.print(machine_id);%>" />


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