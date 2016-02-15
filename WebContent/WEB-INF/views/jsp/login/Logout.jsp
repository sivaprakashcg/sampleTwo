<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="cache-control" content="no-cache" />
<!-- to prevent caching of this page anywhere-->

<title>Bristow Logout</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/menu.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />" />
<!--
<link rel="stylesheet" type="text/css" href="<c:url value="/css/CommonStyles.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/eFlight.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/jquery-ui.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/common.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/menu.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />" />

<script type="text/javascript" src="<c:url value="/js/menu_properties.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/common/common_properties.js"/>"></script> 
<script type="text/javascript" src="<c:url value="/js/common.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/common/eflight.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/admin/login.js"/>"></script>-->
<script type="text/javascript" src="<c:url value="/js/jquery-latest.js"/>"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('.main').css("max-height",($(window).height())-100);
	$('.main').css("height",($(window).height())-115);
});
// 21-Jun-13 : Ashok: Offline handling
window.addEventListener('load', function(e) {
  window.applicationCache.addEventListener('updateready', function(e) {
	if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
	  window.applicationCache.swapCache();
	  //if (confirm('A new version of this site is available. Load it?')) {
		window.location.reload();
	  //}
	} else {
	}
  }, false);
}, false);

	// 23-Apr-13 : Ashok: for handling back button disabling
    window.history.forward();
    function noBack() { window.history.forward(); }
	
</script>

<style type="text/css">
.usertext {
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}
.ssoDisclaimer {
	font-size: 10px;
	font-weight: normal;
	text-align: center;
	font-style: italic;
}

a label {
	cursor: pointer;
}

html {
	height: 100%;
}

body {
	overflow-x: hidden;
	height: 100%;
}

#page-container {
	height: auto;
	min-height: 100%;
	*table-layout: fixed;
	background-image: url("images/Login_images/bg_stripes.png");
	background-repeat: repeat;
	z-index: 2;
}

#footer {
	position: relative;
	height: 30px;
	margin-top: -30px;
}

#content-container {
	padding-bottom: 30px;
}

#eflightlogoForLogin {
	height: 35px;
	padding-left: 10px;
	padding-bottom: 34px;
	margin: 0px;
	padding-top: 20px;
}

#bristowlogoForLogin {
	height: 55px;
	padding-left: 10px;
	padding-bottom: 38px;
	margin: 0px;
	padding-top: 10px;
}

#logo_divider {
	height: 25px;
	padding-left: 10px;
	padding-bottom: 40px;
	margin: 0px;
	padding-top: 10px;
}

#login_menu_bar {
	height: 70px;
	width: 100%;
	background: url("images/top_bar/top_bar_bg.png") repeat-x scroll 0 0
		transparent;
}

.main {
	background: url("images/Login_images/Bristow_Login_Image.jpg")  no-repeat center top fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
</head>
<body oncontextmenu="return false;" onload="noBack();"
	onpageshow="if (event.persisted) noBack();" onunload="">
	<%
	  String envDetailDispmain = (String)application.getAttribute("envDetail"); 
	  String releaseversionmain = (String)application.getAttribute("releaseVer");
	%>
	<div align="center" id="page-container">
		<div class="mainLoginPage">
			<table style="border: 0px solid #d1ebf4; width: 100%;">
				<tr height="70px;">
					<td height="70px;" align="left" colspan="2">

						<div id="login_menu_bar" style="height: 70px">
							<div>
								<table><tr><td><img src="images/top_bar/eFlight.jpg" id="bristowlogoForLogin">
							</td><td style="padding-bottom:35px;font-weight:bold;font-family:MS Mincho;color:#006095;font-size:14px">
							<label>
							<% if (!envDetailDispmain.equals("null") && !releaseversionmain.equals("null")) { %>  
									<%=envDetailDispmain %>-<%=releaseversionmain%>
									<% } %></label></td></tr></table>

								<!--<img							
									src="images/top_bar/top_menu_divider.png" align="bottom"
									id="logo_divider"> <img
									src="images/Login_images/eFlight.jpg" id="eflightlogoForLogin"
									align="bottom"> -->
							</div>
						</div>
						<div class="main Content clearfix">
							<div class="sign-in">
								<br> <br>
								<table width="100%">
									<tr>
										<td class="usertext" align="center">
												<spring:message	code="admin.logout.message.label"></spring:message>
										</td>
									</tr>
									<tr>
										<td class="usertext" align="center">
												<spring:message	code="admin.logout.winclose.message.label"></spring:message>
										</td>
									</tr>
								</table>
								<br> <br>
							</div>
							<div class="product-info" align="center"
								style="padding-bottom: 50px">
								<div class="product-headers"></div>
								
							</div>
						</div></td>
				</tr>
			</table>
		</div>
	</div>
	
</body>
</html>