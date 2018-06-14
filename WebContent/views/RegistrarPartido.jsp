<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>

			<div class="row">
				<div class="col-xs-12 col-sm-2"></div>
				<div class="col-xs-12 col-sm-8 " id="border">
					<h2>Registrar Partido</h2>
					<form action="">
						<input type="hidden" name="accion" value="1">
						<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
						<div class="form-group col-xs-12 col-sm-6">
							<label for="nombre">Deporte</label>
							<jsp:useBean id="dDao" class="modelo.DeporteDao" scope="request"></jsp:useBean>
							<select class="form-control" id="deporte" name="deporte">
							    <option value="">Seleccione deporte</option>
								<c:forEach var="equipo" items="${dDao.list()}">
									<option value="<c:out value="${equipo.id}"/>"><c:out
											value="${equipo.nombre}" /></option>
								</c:forEach>
							</select>
						</div>
						
						<div class="form-group col-xs-12 col-sm-6">
							<label for="sel1">Grupo:</label> <select
								class="form-control" id="sel1">
								<option>Seleccione Grupo</option>
								<option>A</option>
								<option>B</option>
								<option>C</option>
							</select>
						</div>
						
						<div class="form-group col-xs-12 col-sm-6">
							<label for="nombre">Equipo local</label>
							<jsp:useBean id="eDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
							<select class="form-control" id="equipo" name="equipo">
							    <option value="">Seleccione delegacion</option>
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
							    <option value="">Seleccione delegacion</option>
								<c:forEach var="equipo" items="${e2Dao.list()}">
									<option value="<c:out value="${equipo.id}"/>"><c:out
											value="${equipo.nombre}" /></option>
								</c:forEach>
							</select>
						</div>
										
							<div class="form-group col-xs-12 col-sm-6">
							<label for="1nombre">Marcador Local:</label> <input type="text"
								class="form-control" id="gollocal" placeholder="Marcador Local"
								name="gollocal" disabled>
						</div>
						
							<div class="form-group col-xs-12 col-sm-6">
							<label for="1nombre">Marcador Visitante:</label> <input type="text"
								class="form-control" id="golvisitante" placeholder="Marcador Visitante"
								name="golvisitante" disabled>
						</div>
						
						<div class="form-group col-xs-12 col-sm-6">
							<label for="nombre">Escenario</label>
							<jsp:useBean id="esDao" class="modelo.EscenarioDao" scope="request"></jsp:useBean>
							<select class="form-control" id="escenario" name="escenario">
							    <option value="">Seleccione escenario</option>
								<c:forEach var="equipo" items="${esDao.list()}">
									<option value="<c:out value="${equipo.id}"/>"><c:out
											value="${equipo.nombre}" /></option>
								</c:forEach>
							</select>
						</div>
						
						<div class="form-group col-xs-12 col-sm-6">
							 <label for="comment">Descripcion</label>
  							 <textarea class="form-control" rows="5" id="descripcion" name="descipcion"></textarea>
						</div>
					
						
						<div class="form-group col-xs-12 col-sm-12">
							<button type="submit" class="btn btn-success" id="button">Registrar</button>
						</div>
					</form>
				</div>
				<div class="col-xs-12 col-sm-2"></div>
<jsp:include page="footer.jsp" />