<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.ConnectDatabase"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'homeEnergyMangementAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
alert();
</script>
  </head>
  
  <body>
  <%
  
  
  				Connection con=null;
				PreparedStatement ps=null;
				ResultSet rs=null;
				
				String addAppliance=request.getParameter("addAppliance");
				String Watts=request.getParameter("Watts");
				
				String homeEnergyQuery="insert into home_energy_manage value(?,?)";
				System.out.println("homeEnergyQuery------------"+homeEnergyQuery);
				
				try
				{
				 con=(Connection) ConnectDatabase.getConnection();
				 ps=con.prepareStatement(homeEnergyQuery);
				 ps.setString(1, addAppliance);
				 ps.setString(2,Watts);
				 ps.executeUpdate();
				 
				 RequestDispatcher rd=request.getRequestDispatcher("HomeEnergyManagement.jsp");
				 rd.forward(request, response);
				}
				
				catch (Exception e) 
				{
				System.out.println(e.getMessage());
			
			
				}
  
  
  
  
  
  
  
  
  
  
  
  
  
   %>
  </body>
</html>
