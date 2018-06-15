<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>

<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border">
		<h2>Registrar Deporte</h2>
		<form action="../DeporteServlet" method="post">
			<input type="hidden" name="accion" value="1">
			<div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Nombre Deporte:</label> <input type="text"
					class="form-control" id="nombre" placeholder="Nombre Deporte"
					name="nombre">
			</div>
			<div class="form-group col-xs-12 col-sm-12">
				<button type="submit" class="btn btn-success" id="button">Registrar</button>
			</div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-2"></div>
</div>
	<jsp:include page="footer.jsp" />