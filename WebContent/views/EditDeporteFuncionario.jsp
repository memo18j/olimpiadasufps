<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>
<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border">
		<h2>Actualizar Inscipción Jugador</h2>
		<form action="InscriJugadorServlet" method="get">
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			 <c:set var="team" scope="request" value = "${requestScope.dejugador}"/>
			<input type="hidden" name="accion" value="2">
            <div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Id</label> <input type="text"
					class="form-control" id="id" placeholder="id"
					name="id"  value="<c:out value = "${team.id}"/>">
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Delegacion</label>
				<jsp:useBean id="eDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
				<select class="form-control" id="equipo" name="equipo">
					<option value="<c:out value = "${team.equipo.id}"/>"><c:out value = "${team.equipo.nombre}"/></option>
					<c:forEach var="equipo" items="${eDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Deporte</label>
				<jsp:useBean id="dDao" class="modelo.DeporteDao" scope="request"></jsp:useBean>
				<select class="form-control" id="deporte" name="deporte">
					<option value="<c:out value = "${team.deporte.id}"/>"><c:out value = "${team.deporte.nombre}"/></option>
					<c:forEach var="equipo" items="${dDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Funcionario</label>
				<jsp:useBean id="fDao" class="modelo.FuncionarioDao" scope="request"></jsp:useBean>
				<select class="form-control" id="funcionario" name="funcionario">
				    <option value="<c:out value = "${team.funcionario.id}"/>"><c:out value = "${team.funcionario.nombre}"/></option>
					<c:forEach var="equipo" items="${fDao.list()}">
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
	<jsp:include page="footer.jsp" />