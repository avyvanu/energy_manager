package com.HomeEnergyManage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.ConnectDatabase;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class homeEnergyMangement extends HttpServlet
{

	/**
	 * Constructor of the object.
	 */
	public homeEnergyMangement()
	{
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

		public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
			{
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				
				Connection con=null;
				PreparedStatement ps=null;
				ResultSet rs=null;
				
				String addAppliance=request.getParameter("addAppliance");
				String Watts=request.getParameter("Watts");
				
				String homeEnergyQuery="insert into home_energy_manage(ApplianceName, Watts) value(?,?)";
				System.out.println("homeEnergyQuery------------"+homeEnergyQuery);
				
				try
				{
				 con=(Connection) ConnectDatabase.getConnection();
				 ps=(PreparedStatement) con.prepareStatement(homeEnergyQuery);
				 ps.setString(1, addAppliance);
				 ps.setString(2,Watts);
				 ps.executeUpdate();
				 
				 response.sendRedirect("jsp/HomeEnergyManagement.jsp");
				// RequestDispatcher rd=request.getRequestDispatcher("/jsp/HomeEnergyManagement.jsp");
				// rd.forward(request, response);
				 
				}
				catch (Exception e) 
				{
					e.printStackTrace();
					
				}
				
				
				
			}

	
	public void init() throws ServletException 
	{
	
	}

}
