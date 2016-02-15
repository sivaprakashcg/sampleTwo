<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML >
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/angular.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/admin/user.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/admin/userServices.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/common/common.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery-1.8.1.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery-latest.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery.dataTables.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery-ui.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery.validate.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery.multiselect.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/jquery.multiselect.filter.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/chosen.jquery.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/shortcut.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery/shortcut.min.js"/>"></script>

</head>
<body ng-app="userApp" ng-controller="userController as ctr">



	<table>
		<tr>
			<td>
				<table border='1'>
					<tr>
						<th>emp Name</th>
						<th>last Name</th>
						<th>phone number</th>
						<th>email</th>
						<th>Update</th>
					</tr>
					<tr ng-repeat="employee in ctr.employeLst" >
						<td>{{employee.empName}}</td>
						<td>{{employee.lastname}}</td>
						<td>{{employee.phnumber}}</td>
						<td>{{employee.email}}</td>
						<td><button type="button"
								ng-click="ctr.myFunction(employee.empId)">Edit</button></td>
					</tr>

				</table>
			</td>
			<td></td>
			<td valign='top'>
				<table border=1>
					<tr>
						<td colspan="2" align="centre">Update Form</td>
					</tr>

					<tr>
						<td><label for="Fname">First Name</label></td>
						<td><input type="text" name="fname" id="fname" value={{ctr.employee.empName}} /></td>
					</tr>

					<tr>
						<td><label for="Lname">Last Name</label></td>
						<td><input type="text" ng-model=ctr.employee.lastname /></td>
					</tr>

					<tr>
						<td><label for="Mname">Middle name</label></td>
						<td><input type="text" ng-model=ctr.employee.middlename /></td>
					</tr>

					<tr>
						<td><label for="PhNumber">Phone Number</label></td>
						<td><input type="text" ng-model=ctr.employee.phnumber /></td>
					</tr>


					<tr>
						<td><label for="Email">Email</label></td>
						<td><input type="text"  ng-model="ctr.employee.email" /></td>
					</tr>


					<tr>
						<td><label for="Address">Address 1</label></td>
						<td><input type="text" name="address1" id="address1" /></td>
					</tr>

					<tr>
						<td><label for="Address">Address 2</label></td>
						<td><input type="text" name="address2" id="address2" /></td>
					</tr>

					<tr>
						<td><label for="Address">Zipcode</label></td>
						<td><input type="text" name="zipcode" id="zipCode" /></td>
					</tr>

					<tr>
						<td><label for="Uname">User Name</label></td>
						<td><input type="text" name="uname" id="uname" /></td>
					</tr>

					<tr>
						<td><label for="Password">Password</label></td>
						<td><input type="password" name="password" id="password" /></td>
					</tr>

					<tr>
						<td><label for="Password1">Reenter Password</label></td>
						<td><input type="password" name="password1" id="passwordOne" /></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="button" value="Register" ng-click='ctr.saveUser()'> 
							<input type="button" value="Cancel"
							onclick='cancel()' /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</body>