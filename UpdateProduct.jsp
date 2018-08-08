<%@page import="model.ProductModel"%>
<%@page import="entities.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DanhMucModel"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
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
<style>
input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}
</style>
<body>
	<div class="container">
		<h2>Update Product</h2>
		<form enctype="multipart/form-data"
			action="ProductServlet?action=update" method="Post">
			<%
				ArrayList list = new DanhMucModel().getList();
				Product p = (Product) request.getAttribute("product");
			%>
			<table class="table">
				<tr>
					<td><label for="idPr">ID Product</label></td>
					<td><input type="text" id="idPr" name="idPr"
						value="<%=p.getIdPr()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td><label for="namePr">Name Product</label></td>
					<td><input type="text" id="nameProduct" name="nameProduct"
						value="<%=p.getNamePr()%>"></td>
				</tr>
				<tr>
					<td><label for="pricePr">Price Product</label></td>
					<td><input type="text" id="priceProduct" name="priceProduct"
						value="<%=p.getPrice()%>"></td>
				<tr>
					<td><label for="madm">Danh Muc</label></td>
					<td><select name="madm">
							<c:set var="madm" value="<%=p.getMadm()%>" />
							<c:forEach var="dm" items="<%=list%>">
								<option value="${dm.madm}" ${dm.madm==madm?'selected':''}>${dm.tendm}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td><label for="image">Pre Image</label></td>
					<td><img style="width: 30%; height: 50%;"
						src="Images/<%=p.getPicture()%>"></td>

				</tr>
				<tr>
					<td><label for="image">Update Image</label></td>
					<td><img style="width: 30%; height: 50%;" id="img2"></td>
				</tr>
				<tr>
					<td><input type="file" id="file" name="file" value="null"></td>
				</tr>
			</table>
			<input type="submit">
		</form>
	</div>
</body>
<script>
	$('#file').on('change', function() {
		var temp = $('#file').val();
		var i = 0;
		for (i = temp.length; i >= 0; --i) {
			if (temp[i] === '\\') {
				break;
			}
		}
		var string = '';
		for (var j = i + 1; j < temp.length; j++) {
			string += temp[j];
		}
		$('#abc').val('Images/' + string);
		var t = 'Images/' + string;
		$('#img2').attr("src", t);
	})
</script>
</html>