<jsp:include page="header.jsp" />
<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border" >

		
		<form action="../ReportesServlet" method="get" >
		<h4>Delegaciones por deporte</h4>
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<input type="hidden" name="accion" value="1">
			<div class="form-group col-xs-12 col-sm-9">
				<jsp:useBean id="dDao" class="modelo.DeporteDao" scope="request"></jsp:useBean>
				<select class="form-control" id="deporte" name="deporte" >
					<option value="">Seleccione deporte</option>
					<c:forEach var="equipo" items="${dDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-xs-12 col-sm-3">
				<button type="submit" class="btn btn-success" id="button">Ver</button>
			</div>
		</form>
		<form action="../ReportesServlet" method="get" >
		<h4>Funcionarios de equipo</h4>
			<input type="hidden" name="accion" value="2">
			<div class="form-group col-xs-12 col-sm-9">
				<jsp:useBean id="eDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
				<select class="form-control" id="equipo" name="equipo" >
					<option value="">Seleccione equipo</option>
					<c:forEach var="equipo" items="${eDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-xs-12 col-sm-3">
				<button type="submit" class="btn btn-success" id="button">Ver</button>
			</div>
		</form>
		<form action="../ReportesServlet" method="get" >
		<h4>Partidos/Fecha</h4>
			<input type="hidden" name="accion" value="3">
			<div class="form-group col-xs-12 col-sm-9">
			 <input class="form-control" type="date" name="fecha" id="fecha">
			</div>
			
			<div class="form-group col-xs-12 col-sm-3">
				<button type="submit" class="btn btn-success" id="button">Ver</button>
			</div>
		</form>
		<form action="../ReportesServlet" method="get" >
		<h4>Delegaciones</h4>
			
			<div class="form-group col-xs-12 col-sm-9">
			<label for="fecha">Inscritas </label>
			</div>
			
			<div class="form-group col-xs-12 col-sm-3">
				<button type="submit" class="btn btn-success" id="button">Ver</button>
			</div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-2"></div>
	</div>
<jsp:include page="footer.jsp" />