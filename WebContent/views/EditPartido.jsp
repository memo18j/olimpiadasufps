<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>


<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border">
		<h2>Actualizar Partido</h2>
		<form action="PartidoServlet" method="get">
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
             <c:set var="team" scope="request" value = "${requestScope.partido}"/>
			<input type="hidden" name="accion" value="2">
            <div class="form-group col-xs-12 col-sm-12">
				<label for="1nombre">Id</label> <input type="text"
					class="form-control" id="id" placeholder="id"
					name="id"  value="<c:out value = "${team.id}"/>">
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Equipo local</label>
				<jsp:useBean id="eDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
				<select class="form-control" id="equipo" name="equipo">
					<option value="<c:out value = "${team.equipo1.id}"/>"><c:out value = "${team.equipo1.nombre}"/></option>
					<c:forEach var="equipo" items="${eDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Equipo visitante</label>
				<jsp:useBean id="e2Dao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
				<select class="form-control" id="equipo2" name="equipo2">
					<option value="<c:out value = "${team.equipo2.id}"/>"><c:out value = "${team.equipo2.nombre}"/></option>
					<c:forEach var="equipo" items="${e2Dao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Marcador Local:</label> <input type="text"
					class="form-control" id="gollocal" placeholder="Marcador Local"
					name="gollocal" value="<c:out value = "${team.marcadorA}"/>">
			</div>

			<div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Marcador Visitante:</label> <input type="text"
					class="form-control" id="golvisitante"
					placeholder="Marcador Visitante" name="golvisitante" value="<c:out value = "${team.marcadorB}"/>">
			</div>

			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Escenario</label>
				<jsp:useBean id="esDao" class="modelo.EscenarioDao" scope="request"></jsp:useBean>
				<select class="form-control" id="escenario" name="escenario">
					<option value="<c:out value = "${team.escenarioBean.id}"/>"><c:out value = "${team.escenarioBean.nombre}"/></option>
					<c:forEach var="equipo" items="${esDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="fecha">Fecha </label> <input
					class="form-control" type="date" name="fecha" id="fecha" value="<c:out value = "${team.fecha}"/>" >

			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="sel1">Fase:</label> <select class="form-control"
					id="fase" name="fase">
					<option><c:out value = "${team.fase}"/></option>
					<option>Grupos</option>
					<option>Octavos</option>
					<option>Cuartos</option>
					<option>Semifinales</option>
					<option>Final</option>
				</select>
			</div>

			<div class="form-group col-xs-12 col-sm-12">
				<label for="comment">Descripcion</label>
				<textarea class="form-control" rows="5" id="descripcion"
					name="descripcion"><c:out value = "${team.descripcion}"/></textarea>
			</div>


			<div class="form-group col-xs-12 col-sm-12">
				<button type="submit" class="btn btn-success" id="button">Actualizar</button>
			</div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-2"></div>
	<jsp:include page="footer.jsp" />