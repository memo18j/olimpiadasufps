<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../plantilla/header.jsp"/>

<head>
<link rel="stylesheet" href="../plantilla/css/estilos.css">

</head>


<form action="DelegacionServlet" class="formulario" method="get">
 	
 	<h1 class="formulario__titulo">Registrar Delegacion</h1>

	<input type="text" class="formulario__input" id="nombre" placeholder="Nombre" name="nombre">
	
	<input type="text" class="formulario__input" id="delegado" placeholder="Nombre delegado" name="delegado">
	
	<input type="text" class="formulario__input" id="telefono" placeholder="Telefono" name="telefono">
	
	<input type="submit" class="formulario__submit">


</form>


<jsp:include page="../plantilla/footer.jsp"/>