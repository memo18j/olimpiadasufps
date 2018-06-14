<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Olimpiadas UFPS</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="css/style4.css">
<link rel="stylesheet" href="css/stilos.css">
</head>
<body>



	<div class="wrapper">
		<!-- Sidebar Holder -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Olimpiadas UFPS</h3>
				<strong>OU</strong>
			</div>

						<ul class="list-unstyled components">
				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"> <i
						class="glyphicon glyphicon-home"></i> Delegacion
				</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="registrarDelegacion.jsp">Registrar Delegacion</a></li>
						<li><a href="ListaDelegaciones.jsp">Delegaciones</a></li>
						
					</ul></li>
					
				<li> <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Funcionario
				</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="RegistrarFuncionario.jsp">Registrar Funcionario</a></li>
						<li><a href="ListaFuncionarios.jsp">Funcionarios</a></li>
						
					</ul></li>
					
					<li> <a href="#registerSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Deporte
				</a>
					<ul class="collapse list-unstyled" id="registerSubmenu">
						<li><a href="RegistrarDeporte.jsp">Registrar Deporte</a></li>
						<li><a href="ListaDeportes.jsp">Deportes</a></li>
						
					</ul></li>
					
					<li> <a href="#escenarioSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Escenario
				</a>
					<ul class="collapse list-unstyled" id="escenarioSubmenu">
						<li><a href="RegistrarEscenario.jsp">Registrar Escenario</a></li>
						<li><a href="ListaEscenarios.jsp">Escenarios</a></li>
						
					</ul></li>
					
					<li> <a href="#inscripcionSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Inscripcion
				</a>
					<ul class="collapse list-unstyled" id="inscripcionSubmenu">
						<li><a href="RegistrarInscripcion.jsp">Inscripcion Equipo</a></li>
						<li><a href="RegistrarInscripcionJugador.jsp">Inscripcion Jugador</a></li>
						<li><a href="ListaEquiposInscritos.jsp">Equipos Inscritos </a></li>
						<li><a href="ListaFuncionariosDeportes.jsp">Jugadores Inscritos</a></li>
						
					</ul></li>
					
					<li> <a href="#programacionSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Programacion
				</a>
					<ul class="collapse list-unstyled" id="programacionSubmenu">
						<li><a href="#">Registrar Programacion</a></li>
						<li><a href="#">Programaciones</a></li>
						
					</ul></li>
					
					
					<li> <a href="#partidoSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Partido
				</a>
					<ul class="collapse list-unstyled" id="partidoSubmenu">
						<li><a href="RegistrarPartido.jsp">Registrar Partido</a></li>
						<li><a href="#">Partidos</a></li>
						
					</ul></li>
					
					
				
				
			</ul>
			
		</nav>

		<!-- Page Content Holder -->
		<div id="content">

			<nav class="navbar navbar-default">
				<div class="container-fluid">

					<div class="navbar-header">
						<button type="button" id="sidebarCollapse"
							class="btn btn-info navbar-btn">
							<i class="glyphicon glyphicon-align-left"></i> <span>Toggle
								Sidebar</span>
						</button>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">Page</a></li>
							<li><a href="#">Page</a></li>
							<li><a href="#">Page</a></li>
							<li><a href="#">Page</a></li>
						</ul>
					</div>
				</div>
			</nav>



<div class="row">
	<div class="col-xs-12 col-sm-1"></div>
  <div class="col-xs-12 col-sm-10">
    <h2> Listado de Escenarios<h2>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:useBean id="eDao" class="modelo.EscenarioDao" scope="request"></jsp:useBean>
    <table class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nombre Deporte</th>
        
      </tr>
    </thead>
   <tbody>
      <c:forEach items="${eDao.list()}" var="item">
   <tr>
             <td>
             <c:out value = "${item.id}"/>
             </td>
           
             <td>
             <c:out value = "${item.nombre}"/>
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

<div class="line"></div>
		</div>
	</div>





	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<!-- Bootstrap Js CDN -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>
</body>
</html>


