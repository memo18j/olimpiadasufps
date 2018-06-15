<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>
<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border">
		<h2>Registrar Funcionario</h2>
		<form action="../FuncionarioServlet" method="post">
			<input type="hidden" name="accion" value="1">
			<div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Nombre Funcionario:</label> <input type="text"
					class="form-control" id="nombre" placeholder="Nombre funcionario"
					name="nombre">
			</div>

			<div class="form-group col-xs-12 col-sm-6">
				<label for="nombre">Equipo </label>
				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<jsp:useBean id="cDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
				<select class="form-control" id="equipo" name="equipo">
					<c:forEach var="equipo" items="${cDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombre}" /></option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-xs-12 col-sm-12">
				<button type="submit" class="btn btn-success" id="button">Registrar</button>

			</div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-2"></div>
</div>
</form>
</div>
<div class="col-xs-12 col-sm-2"></div>
<jsp:include page="footer.jsp" />