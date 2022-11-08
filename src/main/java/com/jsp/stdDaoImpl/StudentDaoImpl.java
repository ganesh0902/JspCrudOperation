package com.jsp.stdDaoImpl;
import java.sql.*;
import com.jsp.Dbconnection.Connectivity;
import com.jsp.model.Student;
import com.jsp.stdDao.StudentDao;

public class StudentDaoImpl implements StudentDao{

	@Override
	public boolean save(Student std) {
		
		boolean record=false;
		try
		{
				Connection con=Connectivity.getConnection();
				
				
				PreparedStatement pr=con.prepareStatement("insert into student values(?,?,?,?,?,?)");
				
				pr.setInt(1,std.getId());
				pr.setString(2,std.getName());
				pr.setString(3,std.getCity());
				pr.setString(4,std.getCourse());
				pr.setInt(5,std.getContact());
				pr.setInt(6,std.getAge());
				
				 record = pr.execute();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}		
		return record;
	}
	@Override
	public int change(Student std) {
			int record=0;
		try
		{
			Connection con=Connectivity.getConnection();
			Statement st=con.createStatement();
			
			String query="update Student set name='"+std.getName()+"', city='"+std.getCity()+"',course='"+std.getCourse()+"',contact='"+std.getContact()+"',age='"+std.getAge()+"' where id='"+std.getId()+"' ";
			
			record=st.executeUpdate(query);			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}			
		return record;
	}
	@Override
	public int delete(Student std) {
		
		int record=0;
		try
		{		Connection con=Connectivity.getConnection();
		
				PreparedStatement pr=con.prepareStatement("delete from student where id=?");
				
				pr.setInt(1,std.getId());

				record =pr.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}							
		return record;
	}
	@Override
	public int Search(Student std) {
		int record=0;
			try
			{
				Connection con=Connectivity.getConnection();
				Statement st=con.createStatement();
				String query="select * from student";				
				
				ResultSet result=st.executeQuery(query);
				
				while(result.next())
				{
						if(result.getInt(1)==std.getId())
						{
							record=1;
						}
				}							
			}
			catch(Exception e)
			{
				System.out.println(e);
			}		
		return record;
	}
}