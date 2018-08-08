<%@page import="entities.DanhMuc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DanhMucModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		DanhMuc dm = (DanhMuc) request.getAttribute("danhmucByDM");
		DanhMucModel dmmodel = new DanhMucModel();
	%>
	<div class="container">
	
		<h2>Update Danh Muc</h2>
		<form enctype="multipart/form-data"
			action="DanhMucServlet?action=update" method="post">
			<table>
				<tr>
					<th>Ma Danh Muc</th>
					<th>Ten Danh Muc</th>
				</tr>
				<c:forEach var="dm" items="<%=dmmodel.getListDMByMADM(dm.getMadm())%>">
					<tr>
						<td><input name="madm" readonly="readonly" value="${dm.madm}"/></td>
						<td><input name="tendm" value="${dm.tendm}"/></td>
						<td><a href="ProductServlet?action=prByDm&madm=${dm.madm}">Delete</a></td>
					</tr>
					<tr>
						<td><input type="submit" value="Update"></td>

					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>