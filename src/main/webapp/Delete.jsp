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

	  <jsp:useBean id="del" class="com.jsp.model.Student"/>

	<jsp:setProperty property="id" name="del" param="id"/> 
	
	<% 
		StudentDaoImpl obj=new StudentDaoImpl();
		
			int r=obj.delete(del);
		
		if(r!=0)
		{
		%>
			<h2> Record deleted successfully</h2>
			<jsp:include page="Delete.html"/>
						
		<%}
		else
		{
		%>
				<h2> Student Id is invalid </h2>
		
				<jsp:include page="Delete.html"/>
		<% 
		}
		%>
	
		

</body>
</html>