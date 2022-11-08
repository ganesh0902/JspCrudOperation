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

	<jsp:useBean id="search" class="com.jsp.model.Student"/>
	<jsp:setProperty property="id" name="search" param="id"/>

	<% 
		StudentDaoImpl s=new StudentDaoImpl();	
		
		 int r=s.Search(search);
		 
		 if(r!=0)
		 {%>
				<h2> Record found successfully</h2>
				<jsp:include page="Search.html"/>	 
		 <% }
		 else
		 {%>
				<h2> Student Id is Invalid <h2>
				<jsp:include page="Search.html"/>		 
		 <% }		
	%>
</body>
</html>