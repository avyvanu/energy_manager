package com.HomeEnergyManage;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import util.ConnectDatabase;

public class testdata {
	
	
	public static void main(String[] args) 
	{
		
		try
		{
				Connection con=ConnectDatabase.getConnection();
				
				Statement statement=con.createStatement();
				//String queyString="select  raw_mat,  hour(date_time),DATE_FORMAT(date_time, '%Y-%m-%d') from energy_data where  DATE_FORMAT(date_time, '%Y-%m-%d') between '2011-05-11' and '2011-05-17' and rf_node_id='4' order by date_time asc";
				String queyString="select  raw_mat,  hour(date_time),DATE_FORMAT(date_time, '%Y-%m-%d') from energy_data where  date_time between '2011-05-11' and '2011-05-17' and rf_node_id='4' group by date_time asc";
				
				System.out.println("gggg"+queyString);
				
				ResultSet rs=statement.executeQuery(queyString);
				Map<String, String> map=new HashMap<String, String>();
				
				while (rs.next()) 
				{
					String  keys=rs.getString(2)+":"+ rs.getString(3);
		
					map.put(keys, rs.getString(1));
			    }
				
				Map<String, String> sortedMap = new TreeMap<String, String>(map); 
				
				Set set=map.entrySet();
				Iterator iterator=set.iterator();
				
				
				while(iterator.hasNext()) 
				{
					Map.Entry me = (Map.Entry)iterator.next();
					System.out.print("uuuuu : "+me.getKey() + ":vis ");
					System.out.println("nu :"+me.getValue());
				} 
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
