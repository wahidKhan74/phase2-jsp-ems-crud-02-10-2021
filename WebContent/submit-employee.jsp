<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ems.webapp.entity.Employee, com.ems.webapp.dao.EmployeeDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submitted Employee</title>
</head>
<body>
	<%   
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String salary = request.getParameter("salary");
	String dept = request.getParameter("dept");
	
	Employee employee = new Employee(firstName, lastName, Double.parseDouble(salary), dept);
	
	EmployeeDAO.addEmployee(employee);
	response.sendRedirect("success.jsp");
	
	%>
</body>
</html>