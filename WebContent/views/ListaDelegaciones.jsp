<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../plantilla/header.jsp"/>


<div class="row">
	<div class="col-xs-12 col-sm-1"></div>
  <div class="col-xs-12 col-sm-10">
    <h2>
    listado de 
    Equipos<h2>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:useBean id="eDao" class="modelo.EquipoDao" scope="request"></jsp:useBean>
    <table class="table table-striped">
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Delegado</th>
        <th>Telefono</th>
      </tr>
    </thead>
   <tbody>
      <c:forEach items="${eDao.list()}" var="item">
   <tr>
             <td>
             <c:out value = "${item.nombre}"/>
             </td>
             <td>
             <c:out value = "${item.delegado}"/>
             </td>
             <td>
             <c:out value = "${item.telefono}"/>
             </td>
            <td><a class="btn btn-danger" href="EditarEquipoServlet?id=${item.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
        	<td><a class="btn btn-danger" href="EliminarEquipoServlet?id=${item.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
             
         </tr>
</c:forEach>
    </tbody>
  </table>
  <div class="form-group col-xs-12 col-sm-12">
     <button type="submit" class="btn btn-success" id="button" href="../views/registrarDelegacion.jsp">Nuevo Equipo</button>
  </div>
  </div>
  <div class="col-xs-12 col-sm-1"></div>
</div>


<jsp:include page="../plantilla/footer.jsp"/>