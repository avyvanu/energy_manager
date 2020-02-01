<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="util.ConnectDatabase"%>
<%

String data = "";
String machineId=request.getParameter("machineId");
String sensortypeId=request.getParameter("sensortypeId");
//String reEntrEmailId=request.getParameter("reEntrEmailId");
		System.out.println("VALUES ----->"+machineId+"RE-EN"+sensortypeId);
       	
       	Connection con = ConnectDatabase.getConnection();
        
        String qry = "SELECT sensor_id,sensor_name FROM sensor_master where machine_id='"+machineId+"' and  sensor_type_id='"+sensortypeId+"'" ;
     	 System.out.println("qry====="+qry);
     	 //  "SELECT LOOKUP_CODE,DESCRIPTION FROM bpo_state_lookups where LOOKUP_TYPE='"+countryId+"'";
       
        System.out.println("Query"+qry);
      
       try
       {
               Statement st = con.createStatement();
               ResultSet rs = st.executeQuery(qry);
               while(rs.next())
               {
                       data+=rs.getInt("sensor_id")+":"+rs.getString("sensor_name")+",";
               }
       }
       
       catch(Exception ex)
       {
               ex.printStackTrace();
       }
       System.out.println("Set values are ----->"+data);
       out.println(data);
%>