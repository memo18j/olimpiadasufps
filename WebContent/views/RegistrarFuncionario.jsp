<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../plantilla/header.jsp"/>

<head>
<link rel="stylesheet" href="../plantilla/css/estilos.css">

</head>


<form action="DelegacionServlet" class="formulario" method="get">
 	
 	<h1 class="formulario__titulo">Registrar Funcionario</h1>

	<input type="text" class="formulario__input" id="nombre" placeholder="Nombre Funcionario" name="nombre">
	
	
	
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<jsp:useBean id="cDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
		<select class="form-control" id="equipo" name="equipo">
		  <c:forEach var="equipo" items="${cDao.list()}">
		<option value="<c:out value="${equipo.id}"/>"><c:out value="${equipo.nombre}"/></option>
		  </c:forEach>
		</select>
    
	
	<input type="submit" class="formulario__submit" placeholder="Registrar">
	


</form>


<jsp:include page="../plantilla/footer.jsp"/>