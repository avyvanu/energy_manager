
	<!--
function popitup(url) {
	newwindow=window.open(url,'name','height=250,width=850,top=200,left=100');
	if (window.focus) {newwindow.focus()}
	return false;
}
function displaypolicyselect(id) {
  var value = document.getElementById(id).value ;
  //alert(value);
  if (value=='') {
    alert("Please Enter the value for search. ");
    }else {
        
    
document.getElementById("select_policyno").style.display = '';
document.getElementById("select_policy").style.display = '';
  }  
}

  function getsensor_tablerow(t){



var oRows = document.getElementById('table1').getElementsByTagName('tr');
var iRowCount = oRows.length;
var color ='#FFFFFF';
var newcolor ='#d3e9dc'

if(iRowCount < 3)
{
//alert('Your table has ' + iRowCount + ' rows.');
document.getElementById("error_of_sensor").style.display = '';
return false;
}else {
document.forms["myform"].submit();
return true;
}
} 
  function getRow(t){



var oRows = document.getElementById('table1').getElementsByTagName('tr');
var iRowCount = oRows.length;
var color ='#FFFFFF';
var newcolor ='#d3e9dc'
//alert('Your table has ' + iRowCount + ' rows.');
 for (var j = 1; j < iRowCount; j++) {
 document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[0].style.backgroundColor  = color;
  document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[1].style.backgroundColor  = color;
   document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[2].style.backgroundColor  = color;
   document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[3].style.backgroundColor  = color;
  document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[4].style.backgroundColor  = color;
   document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[5].style.backgroundColor  = color;
    document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[6].style.backgroundColor  = color;
    
        
 
 }
// alert("hello"+rowid);
var sid = t.parentNode.id ;

var rowid=  document.getElementById(sid).parentNode.id;
//alert("hello"+rowid);

//alert(nrcols);
var  child0 =document.getElementById(rowid).childNodes[0].id  ;
var  child1 =document.getElementById(rowid).childNodes[1].id  ;
var  child2 =document.getElementById(rowid).childNodes[2].id  ;
var  child3 =document.getElementById(rowid).childNodes[3].id  ;
var  child4 =document.getElementById(rowid).childNodes[4].id  ;
var  child5 =document.getElementById(rowid).childNodes[5].id  ;
var  child6 =document.getElementById(rowid).childNodes[6].id  ;

//alert(child);
document.getElementById(child0).style.backgroundColor  = newcolor;
document.getElementById(child1).style.backgroundColor  = newcolor;
document.getElementById(child2).style.backgroundColor  = newcolor;
document.getElementById(child3).style.backgroundColor  = newcolor;
document.getElementById(child4).style.backgroundColor  = newcolor;
document.getElementById(child5).style.backgroundColor  = newcolor;
document.getElementById(child6).style.backgroundColor  = newcolor;



}





  function getRow_for_add_location(t){



var oRows = document.getElementById('table1').getElementsByTagName('tr');
var iRowCount = oRows.length;
var color ='#FFFFFF';
var newcolor ='#d3e9dc'
//alert('Your table has ' + iRowCount + ' rows.');
 for (var j = 1; j < iRowCount; j++) {
 document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[0].style.backgroundColor  = color;
  document.getElementById('table1').getElementsByTagName('tr')[j].getElementsByTagName('td')[1].style.backgroundColor  = color;
    
        
 
 }
// alert("hello"+rowid);
var sid = t.parentNode.id ;

var rowid=  document.getElementById(sid).parentNode.id;
//alert("hello"+rowid);

//alert(nrcols);
var  child0 =document.getElementById(rowid).childNodes[0].id  ;
var  child1 =document.getElementById(rowid).childNodes[1].id  ;


//alert(child);
document.getElementById(child0).style.backgroundColor  = newcolor;
document.getElementById(child1).style.backgroundColor  = newcolor;




}
function getCheckedRadios() {
	var checkedRadios = [];
	var radios = document.getElementsByTagName('input');
	for (var i = 0; i < radios.length; i++) {
		if (radios[i].type == 'radio' && radios[i].checked) 
{
//alert("Yes");
var cellid=  radios[i].parentNode.id;
var rowid=  document.getElementById(cellid).parentNode.id;
//alert(rowid);
document.getElementById(rowid).style.display = 'none';

}
	}
	return checkedRadios;
} 
function getCheckedRadios_in_addmachine() {
	var checkedRadios = [];
	var radios = document.getElementsByTagName('input');
	for (var i = 0; i < radios.length; i++) {
		if (radios[i].type == 'radio' && radios[i].checked) 
{
//alert("Yes");
var cellid=  radios[i].parentNode.id;
var rowid=  document.getElementById(cellid).parentNode.id;
//alert(rowid);
document.getElementById(rowid).style.display = 'none';
document.getElementById("addsensor_button").style.display = 'none';
showadd();
}
	}
	return checkedRadios;
} 
function popupblack()
{
//alert("yes");

 javascript:parent.topNav.Popup.showModal('modal',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;
 javascript:parent.menu.Popup.showModal('modal',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;
Popup.showModal('modal',null,null,{'screenColor':'#000000','screenOpacity':.6});return false;
	}

// -->
