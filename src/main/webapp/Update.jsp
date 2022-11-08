<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.jsp.stdDaoImpl.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="std" class="com.jsp.model.Student"/>
	<jsp:setProperty property="id" name="std" param="id"/>
	<jsp:setProperty property="name" name="std" param="name"/>
	<jsp:setProperty property="city" name="std" param="city"/>
	<jsp:setProperty property="course" name="std" param="course"/>
	<jsp:setProperty property="contact" name="std" param="contact"/>
	<jsp:setProperty property="age" name="std" param="age"/>
		
				
	<% 
		
		StudentDaoImpl obj=new StudentDaoImpl();

		int record=obj.change(std);
			
		if(record!=0)
		{
		%>			
			<h2> Record Update successfully </h2>
			<jsp:include page="Update.html"/>
		<% 	
		}
		else
		{
		%>				
			<h2> Record Not updated <h2>
			
			<jsp:include page="Update.html"/>
		<% 			
		}		
	%>
</body>
</html>