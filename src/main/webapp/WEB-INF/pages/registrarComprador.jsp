<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="session" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Comprador</title>
<link href="${ctx}/resources/bootstrap-3.2.0-dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="${ctx}/resources/css/blog.css" rel="stylesheet">

</head>

<body>
	<div class="blog-masthead">
		<div class="container">
			<nav class="blog-nav">
				<a class="blog-nav-item active" href="#">Home</a> <a
					class="blog-nav-item" href="#">New features</a> <a
					class="blog-nav-item" href="#">Press</a> <a class="blog-nav-item"
					href="#">New hires</a> <a class="blog-nav-item" href="#">About</a>
			</nav>
		</div>
	</div>



	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div class="jumbotron">
					<h3>Create Store</h3>
				</div>
				<div class="row">

					<form:form method="post" action="${ctx}/comprador/save"
						modelAttribute="comprador" cssClass="form-horizontal">

						<div class="form-group">
							<label class="col-sm-2 control-label">Usuario</label>
							<div class="col-sm-8">
								<form:input path="username" cssClass="form-control" />
								<form:errors path="username" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Nombre</label>
							<div class="col-sm-3">
								<form:input path="nombre" cssClass="form-control" />
							</div>
							<label class="col-sm-2 control-label">Apellido</label>
							<div class="col-sm-3">
								<form:input path="apellido" cssClass="form-control" />
							</div>

						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Fecha de nacimiento
								(dd/mm/yyyy)</label>
							<div class="col-sm-3">
								<form:input path="fecha" cssClass="form-control" />
							</div>
							<label class="col-sm-2 control-label">Email</label>
							<div class="col-sm-3">
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Preferencias</label>
							<div class="col-sm-1">
								<form:checkbox path="pref" value="1"
									id="codigoNotificacionEnvio3" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Promociones Confama</div>
							<div class="col-sm-1">
								<form:checkbox path="pref" value="2"
									id="codigoNotificacionEnvio" cssClass="form-control" />

							</div>
							<div class="col-sm-2">Promociones VISA</div>
							<div class="col-sm-1">
								<form:checkbox path="pref" value="3"
									id="codigoNotificacionEnvio4" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Promociones American Express</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-1">
								<form:checkbox path="pref" value="4"
									id="codigoNotificacionEnvio5" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Centro comercial Santa Fe</div>
							<div class="col-sm-1">
								<form:checkbox path="pref" value="5"
									id="codigoNotificacionEnvio6" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Centro comercial Oviedo</div>
							<div class="col-sm-1">
								<form:checkbox path="pref" value="6"
									id="codigoNotificacionEnvio7" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Centro comercial El tesoro</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-1">
								<form:checkbox path="pref" value="7"
									id="codigoNotificacionEnvio8" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Centro comercial Los Molinos</div>

							<div class="col-sm-1">
								<form:checkbox path="pref" value="8"
									id="codigoNotificacionEnvio9" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Centro comercial Unicentro</div>

							<div class="col-sm-1">
								<form:checkbox path="pref" value="9"
									id="codigoNotificacionEnvio10" cssClass="form-control" />
							</div>
							<div class="col-sm-2">Centro comercial San Diego</div>
						</div>

						<div class="form-group">
							<div class="col-sm-1 col-sm-offset-2">
								<form:checkbox path="pref" value="10"
									id="codigoNotificacionEnvio2" cssClass="form-control" />
							</div>
							<label class="col-sm-9 control-label">AUTORIZACION ENVIO
								NOTIFICACIONES</label>
						</div>

						<div class="form-group">
							<div class="col-sm-4 col-sm-offset-4">
								<input name="Enviar" type="submit" class="btn btn-primary"
									value="Registrar"> <a href="${ctx}/comprador/list"
									class="btn btn-primary">Lista</a>
							</div>
						</div>
					</form:form>


				</div>
				<!--/row-->
			</div>
			<!--/.col-xs-12.col-sm-9-->

			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
				<div class="list-group">
					<a href="${ctx}/comprador/list" class="list-group-item active">List</a>
				</div>
			</div>
			<!--/.sidebar-offcanvas-->
		</div>
		<!--/row-->

		<hr>

		<footer>
			<p>&copy; Company 2014</p>
		</footer>

	</div>
	<!--/.container-->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${ctx}/resources/js/jquery-1.11.1.min.js"></script>
	<script src="${ctx}/resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>

</body>
</html>
