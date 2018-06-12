<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<head>
<link rel="stylesheet" href="../plantilla/css/estilos.css">

</head>


<form action="DelegacionServlet"  method="post" class="formulario">
 	
 	<h1 class="formulario__titulo">Registrar Delegacion</h1>

	<input type="text" class="formulario__input" id="nombre">
	<label for="" class="formulario__label">Nombre Delegación</label>
	<input type="text" class="formulario__input" id="delegado">
	<label for="" class="formulario__label">Nombre Delegado</label>
	<input type="text" class="formulario__input" id="telefono">
	<label for="" class="formulario__label">Telefono Delegado</label>
	<input type="submit" class="formulario__submit">


</form>
<script src="../plantilla/js/form.js"></script>

