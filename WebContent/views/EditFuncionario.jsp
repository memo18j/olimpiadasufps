<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>
<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border">
		<h2>Actualizar Funcionario</h2>
		<form action="FuncionarioServlet" method="get">
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		 <c:set var="team" scope="request" value = "${requestScope.funcionario}"/>
			<input type="hidden" name="accion" value="2">
            <div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Id</label> <input type="text"
					class="form-control" id="id" placeholder="id"
					name="id"  value="<c:out value = "${team.id}"/>">
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Nombre Funcionario:</label> <input type="text"
					class="form-control" id="nombre" placeholder="Nombre funcionario"
					name="nombre" value="<c:out value = "${team.nombre}"/>">
			</div>

			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Equipo </label>
				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<jsp:useBean id="cDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
				<select class="form-control" id="equipo" name="equipo">
				    <option value="<c:out value = "${team.equipo.id}"/>"><c:out value = "${team.equipo.nombre}"/></option>
					<c:forEach var="equipo" items="${cDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-xs-12 col-sm-12">
				<button type="submit" class="btn btn-success" id="button">Actualizar</button>

			</div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-2"></div>
</div>
</form>
</body>
</html>