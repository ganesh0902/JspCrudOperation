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

	<!-- 	
	<%= request.getParameter("id")%>
	<%= request.getParameter("name") %>
	<%= request.getParameter("city") %>
	<%= request.getParameter("course") %>
	<%= request.getParameter("contact") %>
	<%= request.getParameter("age") %>
 	-->
 	
 	<jsp:useBean id="std" class="com.jsp.model.Student"/>
	
	
	<jsp:setProperty property="id" name="std" param="id"/>	
	<jsp:setProperty property="name" name="std" param="name"/>
	<jsp:setProperty property="city" name="std" param="city"/>
	<jsp:setProperty property="course" name="std" param="course"/>
	<jsp:setProperty property="contact" name="std" param="contact"/>
	<jsp:setProperty property="age" name="std" param="age"/>
	
	<%
		boolean found=false;
				StudentDaoImpl ob=new StudentDaoImpl();
				found=ob.save(std);
			
				if(!found)
				{%>
					<h2>Record Save successfully</h2>
					<jsp:include page="index.html"/>	
				
				<%}
				else
				{%>
					<h2> Record not save successfully</h2>
					<jsp:include page="index.html"/>
						
				<% }
		%>				
</body>
</html>