<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>
			<div class="row">
				<div class="col-xs-12 col-sm-2"></div>
				<div class="col-xs-12 col-sm-8 " id="border">
					<h2>Registrar Inscipción Delegacion</h2>
					<form action="../InscripcionServlet" method="post">
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
							<label for="nombre">Delegacion</label>
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
							<label for="sel1">Grupo:</label> 
							<select class="form-control" id="grupo" name="grupo">
								<option>Seleccione Grupo</option>
								<option>A</option>
								<option>B</option>
								<option>C</option>
								<option>D</option>
								<option>E</option>
								<option>F</option>
								<option>G</option>
								<option>H</option>
								<option>I</option>
								
							</select>
						</div>
					
					
						
						<div class="form-group col-xs-12 col-sm-12">
							<button type="submit" class="btn btn-success" id="button">Registrar</button>
						</div>
					</form>
				</div>
				<div class="col-xs-12 col-sm-2"></div>
<jsp:include page="footer.jsp" />