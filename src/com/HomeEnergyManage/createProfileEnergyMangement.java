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

public class createProfileEnergyMangement extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public createProfileEnergyMangement() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		String createprofile=request.getParameter("createprofile");
		String Watts=request.getParameter("Watts");
		
		String homeEnergyQuery="insert into createprofileenergy(createProfile, whatt) value(?,?)";
		System.out.println("homeEnergyQuery------------"+homeEnergyQuery);
		
		try
		{
		 con=(Connection) ConnectDatabase.getConnection();
		 ps=(PreparedStatement) con.prepareStatement(homeEnergyQuery);
		 ps.setString(1, createprofile);
		 ps.setString(2,Watts);
		 ps.executeUpdate();
		 
		 RequestDispatcher rd=request.getRequestDispatcher("jsp/createProfile.jsp");
		 rd.forward(request, response);
		 
		}
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
