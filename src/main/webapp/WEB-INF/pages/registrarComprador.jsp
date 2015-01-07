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
<title>Comprador</title>
<link href="${ctx}/resources/bootstrap-3.2.0-dist/css/bootstrap.min.css"
	rel="stylesheet">

<script src="${ctx}/resources/js/jquery-1.11.1.min.js"></script>
<script src="${ctx}/resources/bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12"></div>
		</div>
		<div class="row">
			<div class="col-sm-12" style="background-color: blue;">
				<h3>REGISTRO</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-1" style="background-color: red">&nbsp;</div>
			<div class="col-sm-10">
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
							<form:checkbox path="pref" value="2" id="codigoNotificacionEnvio"
								cssClass="form-control" />

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
			<div class="col-sm-1" style="background-color: red"></div>
		</div>

		<div class="row">
			<div class="col-sm-12" style="background-color: blue;">
				&nbsp;
			</div>
		</div>
	</div>
</body>
</html>