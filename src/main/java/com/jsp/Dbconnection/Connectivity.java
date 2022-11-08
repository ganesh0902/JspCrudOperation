package com.jsp.Dbconnection;
import java.sql.*;
import java.sql.Connection;

public class Connectivity {

		public static Connection con;
		public static Connection getConnection()
		{
			try
			{	
				Class.forName("com.mysql.jdbc.Driver");
				
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JspProject","root","");
							
			}
			catch(Exception e)
			{
				System.out.println(e);
			}					
			
			return con;			
		}
	
}
