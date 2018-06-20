<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Olimpiadas UFPS</title>
<!-- Favicon -->
<link href='https://ww2.ufps.edu.co/assets/img/ico/favicon.ico'
	rel='Shortcut icon'>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Our Custom CSS -->

<link rel="stylesheet" href="views/css/style4.css">
<link rel="stylesheet" href="views/css/stilos.css">

</head>
<body>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:if test="${empty fn:trim(sessionScope.nombre)}">
		<c:redirect url="../LoginSesionServlet?pepe=memo" />
	</c:if>
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
						<li><a href="views/registrarDelegacion.jsp">Registrar
								Delegacion</a></li>
						<li><a href="views/ListaDelegaciones.jsp">Delegaciones</a></li>

					</ul></li>

				<li><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false"> <i class="glyphicon glyphicon-duplicate"></i>
						Funcionario
				</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="views/RegistrarFuncionario.jsp">Registrar
								Funcionario</a></li>
						<li><a href="views/ListaFuncionarios.jsp">Funcionarios</a></li>

					</ul></li>

				<li><a href="#registerSubmenu" data-toggle="collapse"
					aria-expanded="false"> <i class="glyphicon glyphicon-duplicate"></i>
						Deporte
				</a>
					<ul class="collapse list-unstyled" id="registerSubmenu">
						<li><a href="views/RegistrarDeporte.jsp">Registrar Deporte</a></li>
						<li><a href="views/ListaDeportes.jsp">Deportes</a></li>

					</ul></li>

				<li><a href="#escenarioSubmenu" data-toggle="collapse"
					aria-expanded="false"> <i class="glyphicon glyphicon-duplicate"></i>
						Escenario
				</a>
					<ul class="collapse list-unstyled" id="escenarioSubmenu">
						<li><a href="views/RegistrarEscenario.jsp">Registrar Escenario</a></li>
						<li><a href="views/ListaEscenarios.jsp">Escenarios</a></li>

					</ul></li>

				<li><a href="#inscripcionSubmenu" data-toggle="collapse"
					aria-expanded="false"> <i class="glyphicon glyphicon-duplicate"></i>
						Inscripcion
				</a>
					<ul class="collapse list-unstyled" id="inscripcionSubmenu">
						<li><a href="views/RegistrarInscripcion.jsp">Inscripcion Equipo</a></li>
						<li><a href="views/RegistrarInscripcionJugador.jsp">Inscripcion
								Jugador</a></li>
						<li><a href="views/ListaEquiposInscritos.jsp">Equipos Inscritos
						</a></li>
						<li><a href="views/ListaFuncionariosDeportes.jsp">Jugadores
								Inscritos</a></li>

					</ul></li>


				<li><a href="#partidoSubmenu" data-toggle="collapse"
					aria-expanded="false"> <i class="glyphicon glyphicon-duplicate"></i>
						Partido
				</a>
					<ul class="collapse list-unstyled" id="partidoSubmenu">
						<li><a href="views/RegistrarPartido.jsp">Registrar Partido</a></li>
						<li><a href="views/ListaPartidos.jsp">Partidos</a></li>

					</ul></li>
                 <li> <a href="#programacionSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Reportes
				</a>
					<ul class="collapse list-unstyled" id="programacionSubmenu">
						<li><a href="views/Reportes.jsp">Que reporrte deseas ?</a></li>
						
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
							<i class="glyphicon glyphicon-align-left"></i> <span></span>
						</button>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="LoginSesionServlet?sesion">Salir</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- ACA VAN TODOS LOS FORMULARIOS-->
			<div class="row">
				<div class="col-xs-12 col-sm-2"></div>
				<div class="col-xs-12 col-sm-8 ">
					<img
						src="https://upload.wikimedia.org/wikipedia/commons/0/03/UFPS_Logo.png">
				</div>
				<div class="col-xs-12 col-sm-2"></div>
			</div>
			<!-- ACA TERMINAN TODOS LOS FORMULARIOS-->
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