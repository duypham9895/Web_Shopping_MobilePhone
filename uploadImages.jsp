<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form enctype="multipart/form-data" action="ProductServlet?action=upload" method="post">
		<input type="file" name="file"> <input type="submit">
	</form>
</body>
</html>