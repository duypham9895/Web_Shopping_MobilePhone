<%@page import="entities.Product"%>
<%@page import="model.ProductModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DanhMucModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="resources/Css/CssOfInsertPr.css">
<script language="javascript" src="ten_tap_tin_javascript.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js"
	integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
	crossorigin="anonymous"></script>
</head>
<style>

</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
	<div class="container">
		<h2>Insert Product</h2>
		<form enctype="multipart/form-data"
			action="ProductServlet?action=insert" method="Post">
			<%
				ArrayList list = new DanhMucModel().getList();
			%>

			<label for="idPr">ID Product</label> <input type="text" id="idPr"
				name="idPr">
			<p id="checkId"></p>

			<label for="namePr">Name Product</label> <input type="text"
				id="namePr" name="nameProduct"> <label for="pricePr">Price
				Product</label> <input type="text" id="price" name="priceProduct"> <label
				for="madm">Danh Muc</label> <select name="madm">
				<c:forEach var="dm" items="<%=list%>">
					<option value="${dm.madm}" ${dm.madm==param.madm?'selected':''}>${dm.tendm}</option>
				</c:forEach>
			</select> <label for="image">Image</label> <input type="file" id="file"
				name="file" value="null"> <br>

			<center>
				<img style="width: 30%; height: 50%;" id="img2">
			</center>
			<input type="submit" id="btSubmit">

		</form>
		<%
			
		%>

	</div>
</body>

<script type="text/javascript">
	$(document).ready(function() {
		$('#idPr').on('keyup', function() {

			var idPr = $('#idPr').val();
			/* Act on the event */
			$.ajax({

				type : 'GET',
				data : {
					idPr : idPr,
					action : "check"
				},
				url : 'ProductServlet',

				success : function(result) {
					$("#checkId").html("<b>"+result+"</b>" );
				}
			})

		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
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
	});
</script>
</html>