<jsp:include page="header.jsp" />
<div class="row">
	<div class="col-xs-12 col-sm-1"></div>
	<div class="col-xs-12 col-sm-10">
		<h2>
			Lista Partidos
			<h2>
				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<jsp:useBean id="eDao" class="modelo.PartidoEquipoDao"
					scope="request"></jsp:useBean>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Local</th>
							<th>Visitante</th>
							<th>Marcador local</th>
							<th>Marcador visitante</th>
							<th>Escenario</th>
							<th>Fecha</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${eDao.list()}" var="item">
							<tr>
								<td><c:out value="${item.id}" /></td>
								<td><c:out value="${item.equipo1.nombre}" /></td>
								<td><c:out value="${item.equipo2.nombre}" /></td>
								<td><c:out value="${item.marcadorA}" /></td>
								<td><c:out value="${item.marcadorB}" /></td>
								<td><c:out value="${item.escenarioBean.nombre}" /></td>
                                <td><c:out value="${item.fecha}" /></td>
								<td><a class="btn btn-danger"
									href="../PartidoServlet?id=${item.id}&accion=4"><span
										class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a class="btn btn-danger"
									href="../PartidoServlet?id=${item.id}&accion=3"><span
										class="glyphicon glyphicon-trash"></span></a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="form-group col-xs-12 col-sm-12">
					<button type="submit" class="btn btn-success" id="button"
						href="../views/registrarDelegacion.jsp">Nuevo Equipo</button>
				</div>
	</div>
	<div class="col-xs-12 col-sm-1"></div>
</div>
<jsp:include page="footer.jsp" />