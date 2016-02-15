<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML >
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jquery-ui.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/CommonStyles.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/common.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/menu.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/login.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jqueryMultiselect.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jqueryMultiselectFilter.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/chosen.css" />" />

<script type="text/javascript" src="<c:url value="/resources/js/admin/login.js"/>"></script>
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


<title>Login - Test</title>
</head>
<script type="text/javascript">
	
</script>
<head>
<meta charset="utf-8">
<title>Login</title>

</head>
<body >
	<!-- Labels declared to make use of properties file text in JS -->

	<div align="center" id="page-container">
		<div class="mainLoginPage">
			<table style="border: 0px solid #d1ebf4; width: 100%;">
				<tr height="70px;">
					<td height="70px;" align="left" colspan="2">

						<div class="main Content clearfix">
							<div class="sign-in">
								<table>
									<tr>
										<td colspan="2" style="width: 33%; height: 30px">&nbsp;</td>
									</tr>
								</table>
								<br> <br>

								<div class="befsignin-box" style="text-align: center;">
									<h1></h1>
								</div>
								<div class="topsignin-box"></div>
								<div class="signin-box">
									<h2></h2>

									<form novalidate id="loginform">


										<div id="messageGroup" style="color: red;"></div>
										<div class="email-div">
											<label>User Name </label> <input type="email"
												spellcheck="false" name="userId" id="userId" value=""
												onKeydown="Javascript: if (event.keyCode==13) validateLogin();">
										</div>
										<div class="passwd-div">
											<label for="Passwd">Password </label> <input type="password"
												name="Passwd" id="password"
												onKeydown="Javascript: if (event.keyCode==13) validateLogin();">
										</div>
										&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" name="Login"
											id="login" value="Login" onclick="validateLogin()"
											class="button_textLabel"> <input type="button"
											name="reset" id="reset" value="Reset"
											onclick="fnLoginReset('loginform')" class="button_textLabel">

									</form>
								</div>
								<div class="bottomsignin-box"></div>
							</div>

						</div>
					</td>
				</tr>

			</table>
		</div>
	</div>
</body>
</html>