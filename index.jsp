<%@page import="model.DanhMucModel"%>
<%@page import="model.ProductModel"%>
<%@page import="entities.Item"%>
<%@page import="entities.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="theme.css"> -->

<link href="bootstrap.min.css" rel="stylesheet">
<link href="typeaheadjs.css" rel="stylesheet">


<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">

<!-- Library Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Library Css -->
<!-- <link rel="stylesheet" type="text/css" href="../resources/CssOfIndex.css"> -->
<link rel="stylesheet" type="text/css"
	href="../resources/CssOfIndex.css"></link>

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


</head>
<style type="text/css">
.img-thumbnail {
	position: relative;
	z-index: 0;
}

.img-thumbnail:hover {
	background-color: transparent;
	z-index: 50;
}

.img-thumbnail span {
	position: absolute;
	background-color: #ffffff;
	padding: 5px;
	left: -1000px;
	border: 1px solid #000;
	visibility: hidden;
	color: black;
	text-decoration: none;
}

.img-thumbnail span img {
	border-width: 0;
	padding: 2px;
}

.img-thumbnail:hover span {
	visibility: visible;
	top: -50px;
	left: 50px;
}

.button {
	/* background-color: #FFE4C4; */
	border: none;
	margin-top: 20px;
	color: black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 50px;
	text-align: center;
	color: #E9E9E9;
	background-color: #1F568B;
	/* margin-top: 10px; */
	font-size: 20px;
	bottom: 0;
	width: 100%;
	text-align: center;
	/* padding-top: 10px;
	margin-top: 35px */
}

body {
	font-family: 'Source Serif Pro', serif;
	/* color: #E9E9E9; */
	/* font-size: 20px; */
}

/*==Style cho menu===*/
.container-fluid ul {
	background: #1F568B;
	list-style-type: none;
	text-align: center;
}

.container-fluid li {
	color: #222930;
	display: inline-block;
	width: 120px;
	height: 50px;
	line-height: 40px;
	margin-left: -5px;
}

.container-fluid li {
	text-decoration: none;
	color: #E9E9E9;
	display: block;
}

.container-fluid li:hover {
	background: #F1F1F1;
	color: #4EB1BA;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover
	{
	color: black;
	background-color: #F1F1F1;
}

.navbar-default .navbar-nav>.active>a {
	font-family: 'Montserrat', sans-serif;
}

ol, ul {
	margin-top: 0;
	margin-bottom: 0px;
}

.row {
	margin-right: -15px;
	margin-left: -15px;
	margin-top: 40px;
}

.container-fluid {
	/* background: #1F568B; */
	color: black;
	font-size: 15px;
}

.navbar-default {
	background-color: #1F568B;
}

.navbar-default .navbar-nav>li>a {
	color: #E9E9E9;
}

.navbar-default .navbar-brand {
	color: #E9E9E9;
}

.navbar-default .navbar-nav .active {
	background-color: #1F568B;
	font-family: 'Montserrat', sans-serif;
}

.navbar-brand {
	font-size: 35px;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus,
	.navbar-default .navbar-nav>.active>a:hover {
	color: #E9E9E9;
	background-color: #1F568B;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>.search:focus,
	.navbar-default .navbar-nav>.active>.search:hover {
	color: none;
	background-color: none;
}

.uk-search-default {
	width: 180px;
	background-color: white;
	margin: 5px;
}

.uk-search {
	max-width: 150%;
}

.uk-search-default .uk-search-input {
	height: 40px;
	padding-left: 6px;
	padding-right: 6px;
	background: 0 0;
	border: 0px solid #e5e5e5;
}

.uk-margin {
    margin-bottom: 20px;
    background-color: #1F568B;
}

.navbar-default .navbar-brand:hover {
	color: white;
}

.navbar-nav>li>.dropdown-menu {
	margin-top: 0;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	padding-left: 4px;
	background-color: white;
	text-align: left;
	width: 100px;
}

.dropdown-menu>li {
	width: 158px;
	height: 27px;
	text-align: left;
	margin-left: -4px;
}

.tendm {
	width: 100px;
}

a {
	color: #1F568B;
}

.col-sm-4 {
	padding: 5px 0px 0px 0px;
}

.headerView {
	padding-bottom: 10px;
}

.col-sm-8 {
	background-color: #f1f1f1;
}

.col-sm-8:hover {
	background-color: #cccccc;
}

.navbar-default .navbar-header>span>a {
	color: white;
}
</style>



<body>
	<%
		ProductModel prmodel = new ProductModel();

		ArrayList<Item> carts = (ArrayList<Item>) request.getAttribute("list");
		ArrayList list = new DanhMucModel().getList();
		ArrayList<Product> listPro = null;
		if (request.getParameter("madm") != null) {
			listPro = (ArrayList<Product>) prmodel.listProductByDM(request.getParameter("madm"));
		} else {
			listPro = (ArrayList<Product>) prmodel.getList();
		}
	%>

	<div class="container-fluid">
		<div class="headerView">

			<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">

				<div class="navbar-header">
					<span><a class="navbar-brand"
						style="font-family: 'Montserrat', sans-serif;" href="index.jsp">Mobile
							Phone</a></span>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<c:forEach var="dm" items="<%=list%>">
								<li><a href="index.jsp?madm=${dm.madm}">${dm.tendm}</a></li>
							</c:forEach>
						</ul></li>
					<li><a href="#">News</a></li>
					<li><a href="#">Service</a></li>
					<li><a href="#">Contact</a></li>
					<li class="search">
						<div class="uk-margin">
							<form class="uk-search uk-search-default">
								<a href="" class="uk-search-icon-flip" uk-search-icon></a> <input
									class="uk-search-input" type="search" placeholder="Search...">
							</form>
						</div>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<button class="btn btn-success" data-toggle="modal"
						data-target="#myModal"
						style="padding: 10px 10px 10px 0px; background-color: #1F568B; border-color: #1F568B; font-size: 18px; color: #E9E9E9; float: right">
						<span class="glyphicon glyphicon-shopping-cart"></span> Cart
					</button>


				</ul>

			</div>
			</nav>
		</div>
		<!-- <div class="container">
			<img alt="" src="Images/mobilefuture.jpg">
		</div> -->
		<div class="row" style="margin-bottom: 80px">

			<c:forEach var="p" items="<%=listPro%>">
				<div class="col-sm-4" align="center">
					<div class="uk-inline-clip uk-transition-toggle" tabindex="0">
						<div class="row">

							<div class="col-sm-2"></div>
							<div class="col-sm-8"
								style="justify-content: center; height: 200px">

								<img src="Images/${p.picture}" border="0" width="180px"
									height="300px" style="padding-top: 15%" />

								<div class="uk-position-center" style="height: 250px">
									<!-- <div class="uk-transition-slide-top-small">
											<p class="uk-margin-remove">Headline</p>
											<p class="uk-margin-remove">Headline</p>
											<p class="uk-margin-remove">Headline</p>
										</div> -->
									<div class="uk-transition-slide-bottom-small"
										style="padding-top: 195px">
										<h5>
											<a style="color: #1F568B" id="addcart"
												href="CartServlet?task=add&idPr=${p.idPr}"><span
												class="uk-margin-remove glyphicon glyphicon-shopping-cart">
											</span> Add Cart</a>
										</h5>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-2"></div>
					</div>
					<br>${p.namePr}<br>${p.price}$ <br> <a id="update"
						href="ProductServlet?action=update&idPr=${p.idPr}" hidden="true">
						Update</a>

				</div>
			</c:forEach>

		</div>
		<!-- end row -->

	</div>
	<footer>
	<div class="footer">Pham Anh Duy</div>
	</footer>
	<!-- end container -->
	<!-- Cart on View -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						id="cancelAdd">
						<span class="glyphicon glyphicon-share"></span>
					</button>
					<h2 style="color: #1F568B">
						<span class="glyphicon glyphicon-cart"></span>Products Cart
					</h2>
				</div>
				<c:set var="total" value="0" scope="session" />
				<div class="modal-body">
					<table class="table">
						<tr>
							<td>Name Product</td>
							<td>Quantity</td>
							<td>Unit Price</td>
							<td>Price</td>
							<td>Delete</td>
						</tr>
						<c:forEach var="cart" items="<%=carts%>">

							<tr>
								<td>${cart.pr.namePr}</td>
								<td>${cart.quatity}</td>
								<td>${cart.pr.price}</td>
								<td>${cart.quatity*cart.pr.price}</td>
								<td><a
									href="CartServlet?task=deleteOnView&idPr=${cart.pr.idPr}">Delete
										Product</a></td>
							</tr>
							<c:set var="total"
								value='${total+ (cart.pr.price * cart.quatity)}' />
						</c:forEach>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><h4 style="float: right">
									<b> <span>Total: ${total}</span>
									</b>
								</h4></td>
						</tr>
					</table>
				</div>

				<!-- inside Cart in View -->
				<div class="modal-footer">
					<button type="submit" id="cancelAdd"
						class="btn btn-danger btn-default pull-left" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> Cancel
					</button>
					<a href="CartServlet?task=deleteallOnView&idPr=${i.pr.idPr}">Xoa
						gio hang</a> | <a href="CartServlet?task=buy"><input type="submit"
						value="Mua hang"></a>
					<p>
						<a href="#"> Help ?</a>
					</p>
				</div>
				<!-- end inside Cart in View -->

			</div>
			<!-- end Modal content-->

		</div>
	</div>
	<!-- End Cart on View -->


</body>
<script type="text/javascript">
	/* $(document).ready(function() {
		$('#madm').on('click', function() {
			alert('da click');
			var dm = $('#madm').val();
			/* /* Act on the event */
	/* $.ajax({

	type : 'GET',
	data : {
		dm : dm,
		action : "refeshOnPage"
	},
	url : 'ProductServlet',

	success : function(result) {
		$("#allPr").html(result);
	}
	}) */

	/*	});
	}); */
	/* $('li a').on('click', function() {

		/* $.ajax({

			type : 'GET',
			data : {
				madm : madm,
				action : "refeshOnPage"
			},
			url : 'ProductServlet',

			success : function(result) {
				$("#txt").val(result);
				temp = result;
			}
		})
	}); */
</script>

</html>