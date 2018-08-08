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
		ArrayList listDM = new DanhMucModel().getList();
	%>
	<div class="container">
		<form enctype="multipart/form-data">
			<div>
				<h2>View DANH MUC</h2>
			</div>
				<table>
					<tr>
						<th>Ma Danh Muc</th>
						<th>Ten Danh Muc</th>
					</tr>
					<c:forEach var="dm" items="<%=listDM%>">
						<tr>

							<td>${dm.madm}</td>
							<td>${dm.tendm}</td>
							<%-- <td><a href="ProductServlet?action=prByDm&madm=${dm.madm}">Update</a></td> --%>
							<td><a href="DanhMucServlet?action=updateDM&madm=${dm.madm}">Update</a></td>

						</tr>
					</c:forEach>
				</table>
		</form>
	</div>
</body>
</html>