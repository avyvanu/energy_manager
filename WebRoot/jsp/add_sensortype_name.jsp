<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
exit ();
}

//return true;
}


function chk(percentage) {
if(document.getElementById(percentage).value > 100)
{
		alert("Percentage should be less than or equal to 100");
}	
	

}
function isNumberKey(evt) {
         
	var charCode = (evt.which) ? evt.which : event.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		alert("Only Numeric allowed here");
		return false;
	}
	return true;
}
function exit ()
{
	 var row_no = 1;
        var yx=100;
		var zx=200;
		var vx=300;
		var rx=400;
            var erc="trc";
            var table1="table1";
            var row1="row1";
             vx++;
            erc=erc+row_no;
            
            
            row_no	++;
            yx++;
			zx++;
            
           

            var textbox1 = '<input type="radio" id="chk" name="chk" OnClick="getRow_for_add_location(this);" />';

            var textbox2 = document .getElementById('m_name').value;
            var textbox2 = textbox2 + '<input type="hidden" name="appliance" id="appliance" value="'+textbox2+'">';
                      
            var tbl = parent.window. document .getElementById(table1);

            var rowIndex = parent.window. document .getElementById(row1).value;

            var newRow = tbl.insertRow(row_no);
			 newRow.id='row'+Math.random();

             var newCell = newRow.insertCell(0);
             newCell.id=Math.random();
			 newCell.setAttribute('className','white' );
             newCell.setAttribute('class','white' );
             newCell.innerHTML = textbox1;

             var newCell = newRow.insertCell(1);
			 newCell.id=Math.random();
			 newCell.setAttribute('class','white' );
			 newCell.setAttribute('className','white' );
             newCell.innerHTML = textbox2;

            
     
	  
            document .getElementById('m_name').value='';
            parent.window. document .getElementById("submit").style.display='';
            
  //window.close();
	parent.Popup.hide('modal');
	
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


 
         <form  name="nominee" onSubmit="validate(); return false;">
		 <fieldset>	
		 <legend>Sensor Type Information</legend>  
		 		<div style="text-align:center;color:#f11a1d;" id="error"></div>
		 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td >
    
    <table  border="0" cellspacing="1" cellpadding="4">
    <tr>
         <td>Sensor Type<span><font color="red">*</font></span></td>
        <td > 
<input type="text" class="text" name="m_name" id="m_name" 
 value="" style="" maxlength="100" />
 </td>
        
       
    </tr>


	
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