<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>introduce</title>
<!-- Library UIkit -->
<link rel="stylesheet" href="css/uikit.min.css" />
<script src="js/uikit.min.js"></script>
<script src="js/uikit-icons.min.js"></script>

<!-- UIkit CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.10/css/uikit.min.css" />

<!-- UIkit JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.10/js/uikit.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.10/js/uikit-icons.min.js"></script>

<!-- Css -->
<link rel="stylesheet" type="text/css" href="theme.css">
</head>
<style type="text/css">
.uk-navbar-container:not (.uk-navbar-transparent ) {
	background: #f8f8f8;
	margin-bottom: 0px;
}
</style>
<body>
	<div
		uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; bottom: #transparent-sticky-navbar">
		<nav class="uk-navbar-container" uk-navbar
			style="position: relative; z-index: 980;">
		<div class="uk-navbar-left">

			<a class="uk-navbar-item uk-logo" href="introduce.jsp"><img
				src="Images/97acfa60-483f-4619-b9dc-da57768f713f.png" alt="" /></a>

			<ul class="uk-navbar-nav">
				<li><a href="introduce.jsp">Home</a></li>
				<li><a href="index.jsp" target="_blank">Products</a></li>
				<li><a href="index.jsp" target="_blank">Mobile Phone</a></li>
				<li><a href="#">Tablet</a></li>
				<li><a href="index.jsp" target="_blank">Laptop</a></li>
			</ul>
		</div>
		</nav>
	</div>

	<img src="Images/kallyas-landingpage.jpg" alt="">
</body>
</html>