package com.jsp.stdDao;
import com.jsp.model.Student;

public interface StudentDao {
	
		public boolean save(Student std);
		public int change(Student std);
		public int delete(Student std);
		public int Search(Student std);
}
