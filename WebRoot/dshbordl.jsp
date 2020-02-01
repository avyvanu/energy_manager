<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dshbordl.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="
" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="green">
  
<div align="center" >
   <object>
      <embed src="console.swf" quality="high" pluginspage=
       "http://www.macromedia.com/go/getflashplayer" 
	     type="application/x-shockwave-flash" width="1000" 
                   height="650" align="top">
      </embed>
    </object>
</div>
  
  <%--<%
   try {
      String line;
      Process p = Runtime.getRuntime().exec("IBM_Green_Sigma_Energy_Monitoring_Dashboard.exe");

      
    }
    catch (Exception err) {
      err.printStackTrace();
    }
  
   %>
   
  --%></body>
</html>
