<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" scope="session" />

<!DOCTYPE HTML>
<html>
<head>
  <title>Dream Live Website Template | Contact :: W3layouts</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="${ctx}/resources/css/style.css" rel="stylesheet" type="text/css"  media="all" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
 </head>
<body>
	<!----start-header----->
	 <div class="header">
	     <div class="wrap">
			<div class="top-header">
				<div class="logo">
					<a href="index.html"><img src="${ctx}/resources/images/logo.png" title="logo" /></a>
				</div>
				<div class="social-icons">
					<ul>
						<li><a href="#"><img src="${ctx}/resources/images/facebook.png" title="facebook" /></a></li>
						<li><a href="#"><img src="${ctx}/resources/images/twitter.png" title="twitter" /></a></li>
						<li><a href="#"><img src="${ctx}/resources/images/google.png" title="google pluse" /></a></li>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<!---start-top-nav---->
			<div class="top-nav">
				<div class="top-nav-left">
					<ul>
						<li><a href="registrarComprador.html">Home</a></li>
						<li><a href="registrarComprador.html">PROMOCIONes</a></li>
						<li><a href="registrarComprador.html">BUSQUEDA</a></li>
						<li><a href="registrarComprador.html">sERVICIOS</a></li>
						<li class="active"><a href="registrarComprador.html">rEGISTRO</a></li>
						<div class="clear"> </div>
					</ul>
             </div>
				<div class="top-nav-right">
					<div class="telephone">
                    <a href="Tel:3002345679" rel="external">
					<span><i class="phone_img"><img src="${ctx}/resources/images/phone.png" alt="" /></i></span><span class="number">(300) 234-5678</span></a>
					</div>
			     </div>
				<div class="clear"> </div>
			</div>
			<!---End-top-nav---->
		</div>
	</div>
   <!----End-header----->
		 <!---start-content---->
		 <form:form method="post" action="${ctx}/comprador/save" modelAttribute="comprador" >
		    <div class="contact_desc">
		        <div class="wrap">
			         <div class="contact-form">
				  	   <h2>REGISTRO</h2>
							<div class="left_form">
					    	<div>
						    	<span>
			    	      <label>NOMBRE USUARIO</label></span>
						    	<span><form:input path="username" cssClass="textbox"/>
						    	<form:errors path="username" cssClass="error"/>
						    	</span>
						    </div>
						    <div>
						    	<span>
						    	<label>NOMBRE</label></span>
						    	<span><form:input path="nombre" cssClass="textbox"/>
						    	<form:errors path="nombre" cssClass="error"/></span>
						    </div>
						    <div>
						     	<span>
						     	<label>APELLIDO</label></span>
                                <span><form:input path="apellido" cssClass="textbox"/></span>
						        <div><span>
						          <label>FECHA DE NACIMIENTO</label>
						          </span> <span>
						            <form:input path="fecha" cssClass="textbox" />
						            </span></div>
                                <div> <span>
                                  <label>E-MAIL</label>
                                  </span> <span>
                                    <form:input path="email" cssClass="textbox"/>
                                    <form:errors path="email" cssClass="error"/>
                                  </span></div>
						    </div>
					    </div>
					    <div class="right_form">
					      <div><span>
				          <label>PREFERENCIAS</label></span></div>
                          <div> <span>
                          <label>
                            <form:checkbox path="pref" value="1" id="codigoNotificacionEnvio3" />
                            Promociones Confama
                          </label>
                          </span></div>
                          <div> 
                            <p><span>
                              <form:checkbox path="pref" value="2" id="codigoNotificacionEnvio" />
                            <label>Promociones VISA</label>
                            </span>                          </p>
                          </div>
<div>
  <div>
    <p><span>
      <form:checkbox path="pref" value="3" id="codigoNotificacionEnvio4" />
      <label>Promociones American Express</label>
    </span></p>
  </div>
  <div>
    <p><span>
      <form:checkbox path="pref" value="4" id="codigoNotificacionEnvio5" />
      <label>Centro comercial Santa Fe</label>
    </span></p>
  </div>
  <div>
    <p><span>
      <form:checkbox path="pref" value="5" id="codigoNotificacionEnvio6" />
      <label>Centro comercial Oviedo</label>
    </span></p>
  </div>
  <div>
    <p><span>
      <form:checkbox path="pref" value="6" id="codigoNotificacionEnvio7" />
      <label>Centro comercial El tesoro</label>
    </span></p>
  </div>
  <div>
    <p><span>
      <form:checkbox path="pref" value="7" id="codigoNotificacionEnvio8" />
      <label>Centro comercial Los Molinos</label>
    </span></p>
  </div>
  <div>
    <p><span>
      <form:checkbox path="pref" value="8" id="codigoNotificacionEnvio9" />
      <label>Centro comercial Unicentro</label>
    </span></p>
  </div>
  <div>
    <p><span>
      <form:checkbox path="pref" value="9" id="codigoNotificacionEnvio10" />
      <label>Centro comercial San Diego</label>
    </span></p>
  </div>
  <div> <span>AUTORIZACION ENVIO NOTIFICACIONES
    <form:checkbox path="pref" value="10" id="codigoNotificacionEnvio2" />
</span></div>
  <span class="clear">
  <input name="Enviar" type="submit" class="myButton" value="Registrar">
  <a href="${ctx}/comprador/list">Lista</a>
  </span></div>
</div>
 </form:form>
					    
				  </div>
	              <p>&nbsp;</p>
	              <p>&nbsp;</p>
			      <div class="content_bottom"></div>
		        </div>
		    </div>
		 <!---start-footer---->
		  <div class="footer">
		    <div class="wrap"> 
			   <div class="footer-grid">
				<h3>Promociones </h3>
				       <div class="address">
					     <ul>
<li>15% de descuento por pago con tarjeta Comfama en Santafé,</li>
<li>25% en frutas y verduras con tu tarjeta Exito.</li>
						  	   <li>2X1 en mimo´s con tu tarjeta VISA</li>
						  	   <li></li>
					     </ul>
			        </div>
			   </div>
			<div class="footer-grid twitts">
				<h3>ULTIMOS Tweets</h3>
				<p>
				  <label>@Internauta:</label>
Ha sido realmente útil ubicar lo que deseaba comprar utilizando esta aplicación. </p>
				<span>Hace 10 minutos...</span>
		        <p>
		          <label>@fercho1689: De mucha ayuda SafeBuy.</label>
		        </p>
				<span>Hace 15 minutos...</span>
			</div>
			<div class="footer-grid center-grid">
			  <h3>tips</h3>
				<ul>
					<li><a href="#">- Compra en sitios reconocidos, certificados y seguros.</a></li>
					<li><a href="#">- Utiliza los beneficios obtenidos para comprar.</a></li>
					<li></li>
				</ul>
			</div>		
			<div class="footer-grid">
				<h3>SABIAS QUE...</h3>
				<p>SafeBuy te ofrece información disponible para que aproveches las ofertas y oportunidades comerciales que te ayudarán a ahorrar dinero en tus compras.</p>
			</div>
			<div class="clear"> </div>
		</div>
	</div>
	<div class="copy-right">
		<p>Design by <a href="http://w3layouts.com/"> W3layouts</a></p>
	</div>
		 <!---End-footer---->
	</body>
</html>

