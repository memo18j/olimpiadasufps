<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../plantilla/header.jsp"/>

<head>
<link rel="stylesheet" href="../plantilla/css/estilos.css">

</head>


<form action="DelegacionServlet" class="formulario" method="get">
 	
 	<h1 class="formulario__titulo">Registrar Funcionario</h1>

	<input type="text" class="formulario__input" id="nombre" placeholder="Nombre Funcionario" name="nombre">
	
	
	
	
	<select class="form-control" id="sel1">
        <option>--Seleccione Documento--</option>
        <option>Cedula de ciudadania</option>
        <option>Cedula de extranjeria</option>
        <option>Tarjeta de identidad</option>
      </select>
    
	
	<input type="submit" class="formulario__submit" placeholder="Registrar">
	


</form>


<jsp:include page="../plantilla/footer.jsp"/>