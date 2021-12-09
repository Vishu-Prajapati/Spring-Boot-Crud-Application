<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*,java.text.*" %>
<%@page import="java.lang.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
<h2 style="color:green;text-align:center;">Customer Details</h2>
</head>

<style>

.btn-success
{
	color:black;
	position:absolute;
	top:10px;
	right:10px;
}

.table-striped
{
	position:absolute;
	top:50px; 
	bottom:0; 
	left:0; 
	right:0;"
}
</style>

<body>
<div class="container">
	<table class="table table-striped">
	<thead class="thead-dark">
		<th scope="row">ID</th>
		<th scope="row">Full Name</th>
		<th scope="row">Date Of Birth </th>
		<th scope="row">Mobile No</th>
		<th scope="row">Full Address</th>
		<th scope="row">Age</th>
		<th scope="row">Gender</th>
		<th scope="row">Actions</th>
	</thead>
	<tbody>
	<c:forEach items="${customerList}" var="customer">

		<tr>
			<td>${customer.id}</td>
			<td>${customer.firstname}${' '}${customer.lastname}</td>
			<td>
			<fmt:formatDate value="${customer.date_of_birth}" var="formattedDate" type="date" pattern="dd-MM-yyyy"/>
			${formattedDate}
			</td>
			<td>${customer.mobile}</td>
			<td>${customer.address1}${' '}${customer.address2}</td>
			<td>${customer.age}</td>
			<td>${customer.gender}</td>
			<td>
			<spring:url value="/customer/editCustomer/${customer.id}" var="editURL"/>
			<a class="fa fa-edit" href="${editURL}" role="button"></a>
		
			<spring:url value="/customer/deleteCustomer/${customer.id}" var="deleteURL"/>
			<a class="fa fa-trash" href="${deleteURL}" role="button" onclick="if (confirm('Are you sure want to delete data ?')) form.action='${deleteURL}'; else return false;"></a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
			
	<spring:url value="/customer/addCustomer/" var="addURL"/>
	<a class="btn btn-success" href="${addURL}" role="button">ADD</a>
</div>
</body>
</html>