
<jsp:include page="header.jsp"/>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty fn:trim(sessionScope.nombre)}">
<c:redirect url = "../LoginSesionServlet?pepe=memo"/>
</c:if>
<div class="row">
<div class="col-xs-12 col-sm-2"></div>
<div class="col-xs-12 col-sm-8 " id="border">
    <h2>Registrar Mensajeros</h2>
    <form action="">
     <div class="form-group col-xs-12 col-sm-6">
      <label for="1nombre">Primer nombre:</label>
      <input type="text" class="form-control" id="1nombre" placeholder="Primer nombre" name="1nombre">
    </div>
     <div class="form-group col-xs-12 col-sm-6">
      <label for="2nombre">Segundo nombre:</label>
      <input type="text" class="form-control" id="2nombre" placeholder="segundo nombre" name="2nombre">
    </div>
     <div class="form-group col-xs-12 col-sm-6">
      <label for="1apellido">Primer apellido:</label>
      <input type="text" class="form-control" id="1apellido" placeholder="primer apellido" name="1apellido">
    </div>
    <div class="form-group col-xs-12 col-sm-6">
      <label for="2apellido">Segundo apellido:</label>
      <input type="text" class="form-control" id="2apellido" placeholder="segundo apellido" name="2apellido">
    </div>
    <div class="form-group col-xs-12 col-sm-6">
      <label for="sel1">Tipo documento:</label>
      <select class="form-control" id="sel1">
        <option>--Seleccione Documento--</option>
        <option>Cedula de ciudadania</option>
        <option>Cedula de extranjeria</option>
        <option>Tarjeta de identidad</option>
      </select>
    </div>
     <div class="form-group col-xs-12 col-sm-6">
      <label for="documento">Numero documento:</label>
      <input type="text" class="form-control" id="documento" placeholder="numero documento" name="documento">
    </div>
    <div class="form-group col-xs-12 col-sm-6">
    <h5><label>Sexo:</label></h5>
    <label class="radio-inline">
      <input type="radio" name="radiomasculino">Masculino
    </label>
    <label class="radio-inline">
      <input type="radio" name="radiofemenino">Femenino
    </label>
    </div>
    <div class="form-group col-xs-12 col-sm-6">
      <label for="telefono">telefono:</label>
      <input type="text" class="form-control" id="telefono" placeholder="telefono" name="telefono">
    </div>
    <div class="form-group col-xs-12 col-sm-12">
      <label for="direccion">Direccion:</label>
      <input type="text" class="form-control" id="direccion" placeholder="direccion" name="direccion">
    </div>
    <div class="form-group col-xs-12 col-sm-12">
      <label for="email">Email::</label>
      <input type="email" class="form-control" id="email" placeholder="correo electronico" name="email">
    </div>
    <div class="form-group col-xs-12 col-sm-12">
     <button type="submit" class="btn btn-success" id="button">Registrar</button>
    </div>
  </form>
</div>
<div class="col-xs-12 col-sm-2"></div>
</div>
<jsp:include page="footer.jsp"/>