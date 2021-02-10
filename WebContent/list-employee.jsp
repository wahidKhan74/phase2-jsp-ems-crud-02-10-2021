<%@page import="com.ems.webapp.entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.ems.webapp.dao.EmployeeDAO" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Employee</title>
</head>
<body>
	<%
		List<Employee> list = EmployeeDAO.listEmployee();
		request.setAttribute("emplist", list);
	%>
	
	<table style="border:1px solid black;">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Salary</th>
			<th>Department</th>
		</tr>
		<core:forEach items="${emplist}" var="emp">
			<tr>
				<td>${emp.getId()}</td>
				<td>${emp.getFirstName()}</td>
				<td>${emp.getLastName()}</td>
				<td>${emp.getSalary()}</td>
				<td>${emp.getDept()}</td>		
			</tr>
		</core:forEach>
		
	</table>
</body>
</html>