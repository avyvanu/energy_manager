<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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

	var objRegExp =/^(\s*)$/;
	if (objRegExp.test(str))
	{
		str = str.replace(objRegExp,''); 
		if (str.length == 0)
		return str; 
	} 

	
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
document.getElementById("error").innerHTML = "Zone Name cannot be empty";
	
	m_name.focus();
	return false;
}


	if(trimAll(m_name.value) !='')
	{
		exit ();
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
            var table1="table2";
            var row1="row2";
             vx++;
            erc=erc+row_no;
            
            
            row_no	++;
            yx++;
			zx++;
            
           

           

            var textbox2 = document .getElementById('m_name').value;
            var textbox2 = textbox2 + '<input type="hidden" name="m_name" id="m_name" value="'+textbox2+'">';
          
            //var textbox4 = document .getElementById('description').value;
            //var textbox4 = textbox4 + '<input type="hidden" name="description" id="description" value="'+textbox4+'">';
        
           // var textbox6 = document .getElementById('min_op').value;
           // var textbox6 = textbox6 + '<input type="hidden" name="min_op" id="min_op" value="'+textbox6+'">';
           // var textbox7 = document .getElementById('max_op').value;
           // var textbox7 = textbox7 + '<input type="hidden" name="max_op" id="max_op" value="'+textbox7+'">';
            
            var tbl = parent.window. document .getElementById(table1);

            var rowIndex = parent.window. document .getElementById(row1).value;

            var newRow = tbl.insertRow(row_no);
			 newRow.id='row'+Math.random();

          

             var newCell = newRow.insertCell(0);
			 newCell.id=Math.random();
			 newCell.setAttribute('class','white' );
			 newCell.setAttribute('className','white' );
             newCell.innerHTML = textbox2;

            // var newCell = newRow.insertCell(1);
			// newCell.id=Math.random();
			// newCell.setAttribute('class','white' );
			// newCell.setAttribute('className','white' );
           //  newCell.innerHTML = textbox4;
             
            // var newCell = newRow.insertCell(2);
			// newCell.id=Math.random();
			// newCell.setAttribute('class','white' );
			// newCell.setAttribute('className','white' );
          //   newCell.innerHTML = textbox7;
            
          //   var newCell = newRow.insertCell(3);
		//	 newCell.id=Math.random();
		//	 newCell.setAttribute('class','white' );
		//	 newCell.setAttribute('className','white' );
          //   newCell.innerHTML = textbox6;
           
	  
            document .getElementById('m_name').value='';
            
           // document .getElementById('description').value='';
            
            
           // document .getElementById('max_op').value='';
            parent.window. document .getElementById('lnkForgot').style.display='none';
            parent.window. document .getElementById('addsensor_button').style.display='';
            
            
            

	parent.Popup.hide('modal2');
	
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
		 <legend> Zone Information</legend>  
		 		<div style="text-align:center;color:#f11a1d;" id="error"></div>
		 
		 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
			<tr>
    			<td>
    
    			<table  border="0" cellspacing="1" cellpadding="4">
    			<tr>
        			 <td>Name<span><font color="red">*</font></span></td>
        			 <td> 
							<input type="text" class="text" name="m_name" id="m_name" value="" style="" maxlength="100" />
 					 </td>
        
    			</tr>
      	  
	
				</table>
			</td>
        
    		</tr>
    </table>
    
    
	<table width='100%'>
  		<tr>
  
  		<td align="center" colspan="2" class="form2"> 
  			<input type="submit" value="" onclick="javascript:" class="save_buttons" />
  			&nbsp;&nbsp;&nbsp;
  			<input type="reset" value="" class="cancel_buttons" />
	   </td>
  	  </tr>
  	</table>
  
</fieldset>	
</form>
</body>
</html>