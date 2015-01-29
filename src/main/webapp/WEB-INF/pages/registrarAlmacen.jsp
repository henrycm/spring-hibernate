<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" scope="session" />


<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
						<li><a href="registrarAlmacen.html">Home</a></li>
						<li class="active"><a href="registrarAlmacen.html">Registro almacen</a></li>
						<li><a href="registrarPuntoDeVenta.html">registro Punto de venta</a></li>
						<li><a href="registrarAlmacen.html">Registro promociones</a></li>
						<li ></li>
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
		    <div class="contact_desc">
		        <div class="wrap">
		         <form:form method="post" action="${ctx}/almacen/save" modelAttribute="almacen">
			         <div class="contact-form">
				  	   <h2>REGISTRO ALMACEN</h2>
				  	   <div class="left_form">				      
					    	<div>
					    	  <span>
			    	      <label>NIT DEL ALMACEN</label></span>
						    	<span><form:input path="nit" cssClass="textbox" />
						    	<form:errors path="nit" cssClass="error"/></span>
					      </div>
						    <div></div>
					   </div>
					    <div class="right_form">
					      <div><span>
				          <label>NOMBRE DEL ALMACEN</label></span> <span>
					          <form:input path="nombre" cssClass="textbox" />
					          <form:errors path="nombre" cssClass="error"/>
					          </span> </div>
                          <div></div>
						<div>
					  <span><input type="submit" value="Registrar" class="myButton">
					  <a href="${ctx}/almacen/list">Lista</a></span>
						  </div>
					    </div>
					    <div class="clear"></div>
				  </div>
				 <div class="content_bottom"></div>
				 </form:form>
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

