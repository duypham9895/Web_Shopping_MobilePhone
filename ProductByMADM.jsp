<%@page import="entities.DanhMuc"%>
<%@page import="entities.Item"%>
<%@page import="model.ProductModel"%>
<%@page import="entities.Product"%>
<%@page import="model.DanhMucModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<%-- <%
		DanhMuc dm = (DanhMuc) request.getAttribute("danhmucByDM");
		DanhMucModel dmmodel = new DanhMucModel();
	%> --%>

	<div class="container">
		<form enctype="multipart/form-data" >
			<%
				Product p = (Product) request.getAttribute("productByDM");
				ProductModel prmodel = new ProductModel();
			%>
			<%-- 	<h1>
		Trong DANH MỤC
		<%=dm.getTendm()%>
		nay có nhiều sản phẩm. Nếu bạn muốn xoá DANH MỤC
		<%=dm.getTendm()%>
		thì phải xoá tất cả sản phẩm thuộc DANH MỤC
		<%=dm.getTendm()%></h1> --%>
			<table class="table">


				<tr>
					<th>ID Product</th>
					<th>Name Product</th>
					<th>Price</th>
					<th>DanhMuc</th>
					<th>Action</th>
				</tr>
				<c:forEach var="pr" items="<%=prmodel.listProductByDM(p.getMadm())%>">
					<tr>

						<td>${pr.idPr}</td>
						<td>${pr.namePr}</td>
						<td>${pr.price}</td>
						<td><%=p.getMadm()%></td>
						<td><a href="ProductServlet?action=delete&idPr=${pr.idPr}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>