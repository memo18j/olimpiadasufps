<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>


<div class="row">
	<div class="col-xs-12 col-sm-2"></div>
	<div class="col-xs-12 col-sm-8 " id="border">
		<h2>Actualizar Delegacion</h2>

		<form action="DelegacionServlet?" method="get">
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		 <c:set var="team" scope="request" value = "${requestScope.equipo}"/>
			<input type="hidden" name="accion" value="2">
            <div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Id</label> <input type="text"
					class="form-control" id="id" placeholder="id"
					name="id"  value="<c:out value = "${team.id}"/>">
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="1nombre">Nombre Delegacion:</label> <input type="text"
					class="form-control" id="nombre" placeholder="Nombre delegacion"
					name="nombre" value="<c:out value = "${team.nombre}"/>">
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="2nombre">Nombre Delegado:</label> <input type="text"
					class="form-control" id="delegado" placeholder="Delegado"
					name="delegado" value="<c:out value = "${team.delegado}"/>">
			</div>
			<div class="form-group col-xs-12 col-sm-6">
				<label for="1apellido">Telefono:</label> <input type="text"
					class="form-control" id="telefono" placeholder="Telefono"
					name="telefono" value="<c:out value = "${team.telefono}"/>">
			</div>

			<div class="form-group col-xs-12 col-sm-12">
				<button type="submit" class="btn btn-success" id="button">Actualizar</button>
			</div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-2"></div>
	<jsp:include page="footer.jsp" />