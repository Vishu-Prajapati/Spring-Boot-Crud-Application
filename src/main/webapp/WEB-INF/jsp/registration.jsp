<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>

<style>
.btn-info
{
	background-color:gray;
	position:absolute;
	top:10px;
	align:center;
}

.btn-success
{
	background-color:green;
}

.container
{
	margin-top:50px;
	vertical-align:middle;
	max-width:480px;
	border:2pxsolid
}
</style>

<body>
<div class="container">
	<spring:url value="/customer/addCustomer" var="addURL"/>
	<h2 style="background-color: gray;">Customer Information</h2>
	<form:form modelAttribute="customerForm" method="post" action="${addURL}" cssClass="form">

		<form:hidden path="id"/>

		<div class="form-group">
		<label>First name*</label>
		<form:input path="firstname" cssClass="form-control" id="firstname" maxlength="20" pattern="^[a-zA-Z]{2,20}" placeholder="First Name" required="required"/>
		</div>
			
		<div class="form-group">
		<label>Last name*</label>
		<form:input path="lastname" cssClass="form-control" id="lastname" maxlength="20" pattern="^[a-zA-Z]{2,20}" placeholder="Last Name" required="required"/>
		</div>
			
		<div class="form-group">
		<label>Date Of Birth*</label>
		<form:input path="date_of_birth" type="date" cssClass="form-control" id="date_of_birth" required="required"/>
		</div>
			
		<div class="form-group">
		<label>Mobile*</label>
		<form:input path="mobile" cssClass="form-control" id="mobile" pattern="^[0-9]{10}$" placeholder="Mobile No" required="required"/>
		</div>
			
		<div class="form-group">
		<label>First Address*</label>
		<form:input path="address1" cssClass="form-control" id="address1" placeholder="Address" required="required"/>
		</div>
			
		<div class="form-group">
		<label>Second Address</label>
		<form:input path="address2" cssClass="form-control" id="address2" placeholder="Address"/>
		</div>
			
		<div class="form-group">
		<label>Age*</label>
		<form:input path="age" cssClass="form-control" id="age" pattern="^[1-9][0-9]{1,2}$" placeholder="Age" required="required"/>
		</div>
			
		<div class="form-group">
		<label>Gender*</label><br>
		<form:radiobutton path="gender" value="Male" id="gender" required="required"/>Male
		<form:radiobutton path="gender" value="Female" id="gender" required="required"/>Female
		</div>
			
		<div class="form-group">
		<label>Email*</label>
		<form:input path="email" cssClass="form-control" id="email" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="abc123@gmail.com" required="required"/>
		</div>
			
		<button type="submit" class="btn btn-success">SUBMIT</button>
		<br>

		<spring:url value="/customer/list/" var="addURL" />
		<a class="btn btn-info" href="${addURL}" role="button"><-----Back to list</a>
	</form:form>
</div>
</body>
</html>

