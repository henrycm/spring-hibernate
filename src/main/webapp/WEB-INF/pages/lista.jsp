<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" scope="session" />
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lista compradores</title>
<link href="${ctx}/resources/bootstrap-3.2.0-dist/css/bootstrap.min.css" rel="stylesheet">

<script src="${ctx}/resources/js/jquery-1.11.1.min.js"></script>
<script src="${ctx}/resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3>Lista compradores</h3>
				<table class="table table-bordered">
					<thead>
						<tr class="info">
							<th>Username</th>
							<th>Nombre</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="u" items="${compradores}">
							<tr>
								<td>${u.username}</td>
								<td>${u.nombre}</td>
								<td><a href="${ctx}/comprador/ver?username=${u.username}">Detalles</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a class="btn btn-primary btn-sm" href="${ctx}/comprador/">Adicionar </a>
			</div>
			<div class="col-md-6"></div>
		</div>
	</div>

</body>
</html>