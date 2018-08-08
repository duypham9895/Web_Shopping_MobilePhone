<%@page import="entities.Item"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<h1>View Cart</h1>
	<%
		ArrayList<Item> cart = (ArrayList<Item>) request.getAttribute("list");
	%>
	
		<c:set var="total" value="0" scope="session" />
		<table class="table" border="1">
			<tr style="background-color: #45a049; text-align: center">
				<th>ID Product</th>
				<th>Name Product</th>
				<th>Price</th>
				<th>Picture</th>
				<th>Quantity</th>
				<th>Total</th>
				<th>Action</th>
			</tr>

			<c:forEach var="i" items="<%=cart%>">
				<tr>
					<td>${i.pr.idPr}</td>
					<td>${i.pr.namePr}</td>
					<td>${i.pr.price}</td>
					<td><img src="Images/${i.pr.picture}" height="80px"
						width="60px"></td>
					<td>${i.quatity}</td>
					<td>${i.pr.price*i.quatity}</td>
					<c:set var="total" value='${total+ (i.pr.price * i.quatity)}' />
					<td><a href="CartServlet?task=delete&idPr=${i.pr.idPr}">Delete</a>
					</td>
				</tr>


			</c:forEach>


		</table>
		<p></p>
		<p>
			<b>Total: ${total}</b>
		</p>

		<a href="CartServlet?task=buycontinue">Tiep tuc mua</a> | <a
			href="CartServlet?task=deleteall&idPr=${i.pr.idPr}">Xoa gio
			hang</a> | <a href="CartServlet?task=buy"><input type="submit" value="Mua hang"></a>

</body>
</html>