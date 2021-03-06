<jsp:include page="header.jsp" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
	<c:redirect url="../LoginSesionServlet?pepe=memo" />
</c:if>
<div class="row">
	<div class="col-xs-12 col-sm-1"></div>
  <div class="col-xs-12 col-sm-10">
    <h2> Listado de Funcionarios<h2>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:useBean id="eDao" class="modelo.FuncionarioDao" scope="request"></jsp:useBean>
    <table class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Delegacion</th>
        <th>Nombre</th>
      </tr>
    </thead>
   <tbody>
      <c:forEach items="${eDao.list()}" var="item">
   <tr>
             <td>
             <c:out value = "${item.id}"/>
             </td>
             <td>
             <c:out value = "${item.equipo.nombre}"/>
             </td>
             <td>
             <c:out value = "${item.nombre}"/>
             </td>
            <td><a class="btn btn-danger" href="../FuncionarioServlet?id=${item.id}&accion=4"><span class="glyphicon glyphicon-pencil"></span></a></td>
        	<td><a class="btn btn-danger" href="../FuncionarioServlet?id=${item.id}&accion=3"><span class="glyphicon glyphicon-trash"></span></a></td>
             
         </tr>
</c:forEach>
    </tbody>
  </table>

  </div>
  <div class="col-xs-12 col-sm-1"></div>
</div>

<jsp:include page="footer.jsp" />


