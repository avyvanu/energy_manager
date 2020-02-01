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
exit ();
}

//return true;
}



function display(obj,id1,id2) {
	
txt = obj.options[obj.selectedIndex].value;


document.getElementById(id1).style.display = 'none';
document.getElementById(id2).style.display = 'none';
document.getElementById('nomi_type').disabled=false ;
if(txt=='Others')
{
	document.getElementById(id1).style.display = '';
	document.getElementById(id2).style.display = '';
}
if(txt =='Sons' || txt =='Unmarried daughters' || txt =='Brother below the age of 18 and unmarried' || txt =='Widowed Sister' || txt =='Divorced Sister')
{

}else{
    document.getElementById('nomi_type').selectedIndex = 0;
	document.getElementById('nomi_type').disabled=true ;

}

}
function displayproxy(obj,id1,id2,id3,id4) {
txt = obj.options[obj.selectedIndex].value;
document.getElementById(id1).style.display = 'none';
document.getElementById(id2).style.display = 'none';
document.getElementById(id3).style.display = 'none';
document.getElementById(id4).style.display = 'none';
document.getElementById('dob').style.display = 'none';
document.getElementById('dob_label').style.display = 'none';
if ( txt.match(id1) ) {
document.getElementById(id1).style.display = '';
document.getElementById('dob').style.display = '';
document.getElementById('dob_label').style.display = '';
}
if ( txt.match(id2) ) {
document.getElementById(id2).style.display = '';
document.getElementById('dob').style.display = '';
document.getElementById('dob_label').style.display = '';
}
if ( txt.match(id3) ) {
document.getElementById(id3).style.display = '';
document.getElementById(id2).style.display = '';
document.getElementById('dob').style.display = '';
document.getElementById('dob_label').style.display = '';
}
if ( txt.match(id4) ) {
document.getElementById(id4).style.display = '';
document.getElementById(id1).style.display = '';
document.getElementById('dob').style.display = '';
document.getElementById('dob_label').style.display = '';
}
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
            
           

            var textbox1 = '<input type="radio" id="chk" name="chk" OnClick="getRow(this);" />';

            var textbox2 = document .getElementById('s_name').value;
            var textbox2 = textbox2 + '<input type="hidden" name="appliance" id="appliance" value="'+textbox2+'">';
            var textbox3 = document .getElementById('s_type').value;
            var textbox3 = textbox3 + '<input type="hidden" name="appliance" id="appliance" value="'+textbox3+'">';
            
            
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

             var newCell = newRow.insertCell(2);
			 newCell.id=Math.random();
			 newCell.setAttribute('class','white' );
			 newCell.setAttribute('className','white' );
             newCell.innerHTML = textbox3;
             
             
     
	  
	  parent.window. document .getElementById("sensor_table").style.display = '';
      document .getElementById('s_name').value='';
          
            
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
		 <legend> Sensor Information</legend> 
		 <div style="text-align:center;color:#f11a1d;" id="error"></div> 
		 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
<tr>
    <td >
    
    <table  border="0" cellspacing="1" cellpadding="4">
    <tr>
         <td>Appliance Name<span><font color="red">*</font></span></td>
        <td> 
			<input type="text" class="text" name="s_name" id="s_name" value="" style="" maxlength="100" />
 	    </td>
        
        <td>Watts<span><font color="red">*</font></span></td>
        <td> 
        	<input type="text" class="text" name="watts" id="watts" value="" style="" maxlength="100" />
 		</td>




       
    </tr>
    
      
    
	
	</table></td>
        
    </tr></table>
<table width='100%'>
  
  
  <tr>
  
  <td align="center" colspan="2" class="form2"> 
  <input type="submit" value="" onclick="javascript:" class="save_buttons" />&nbsp;&nbsp;&nbsp;<input type="reset" value="" class="cancel_buttons" />
</td>
  </tr></table>
  
</fieldset>	
</form>
</body>
</html>