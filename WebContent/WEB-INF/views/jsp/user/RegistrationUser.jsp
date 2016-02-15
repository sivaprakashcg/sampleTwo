<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML >
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Registration Form</title>
<script type="text/javascript" src="<c:url value="/resources/js/admin/user.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/common/common.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery-1.8.1.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery-latest.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.dataTables.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.validate.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.multiselect.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.multiselect.filter.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/chosen.jquery.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery/shortcut.min.js"/>"></script>

</head>
<body>
<form name="register" method="post" >
<table >
<tr><td colspan="2" align ="centre"> Registration Form</td></tr>

<tr><td><label for="Fname">First Name</label></td>
<td><input type="text" name ="fname" id="fname" /></td></tr>

<tr><td><label for="Lname">Last Name</label></td>
<td><input type="text" name ="lname" id="lname"/></td></tr>

<tr><td><label for="Mname">Middle name</label></td>
<td><input type="text" name ="mname" id="mname"/></td></tr>

<tr><td><label for="PhNumber">Phone Number</label></td>
<td><input type="text" name ="phNumber" id="phNumber"/></td></tr>


<tr><td><label for="Email">Email</label></td>
<td><input type="text" name ="email" id="email"/></td></tr>


<tr><td><label for="Address">Address 1</label></td>
<td><input type="text" name ="address1" id="address1"/></td></tr>

<tr><td><label for="Address">Address 2</label></td>
<td><input type="text" name ="address2" id="address2"/></td></tr>

<tr><td><label for="Address">Zipcode</label></td>
<td><input type="text" name ="zipcode" id="zipCode"/></td></tr>

<tr><td><label for="Uname">User Name</label></td>
<td><input type="text" name ="uname" id="uname"/></td></tr>

<tr><td><label for="Password">Password</label></td>
<td><input type="password" name ="password" id="password"/></td></tr>

<tr><td><label for="Password1">Reenter Password</label></td>
<td><input type="password" name ="password1" id="passwordOne"/></td></tr>

<tr><td></td><td><input type="button" value ="Register" onclick='saveUser()'>
<input type="button" value ="Cancel" onclick='cancel()'/></td></tr>
</table>
</form>
</body>
</html>
