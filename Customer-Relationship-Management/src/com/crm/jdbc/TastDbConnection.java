package com.crm.jdbc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.Connection;
import java.sql.DriverManager;
/**
 * Servlet implementation class TestDataBaseConnection
 */
@WebServlet("/TastDbConnection")
public class TastDbConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request , HttpServletResponse response ) throws IOException  {
		
		String url = "jdbc:mysql://localhost:3306/customer_tracker";
		String user = "crm";
		String pass = "crm";
		String driver = "com.mysql.cj.jdbc.Driver";
		
		
		PrintWriter out =response.getWriter();
		
		try {
			
			Class.forName(driver);
			
			out.println("Establishing Databse Connectivity....." );	
			
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			out.println("Connection Successfull!!! to " + url);
		} catch (Exception e) {
			e.printStackTrace();
			out.println(e);
		}
		
	}

}
