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
						<li><a href="#">Delegaciones</a></li>
						
					</ul></li>
					
				<li> <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Funcionario
				</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="RegistrarFuncionario.jsp">Registrar Funcionario</a></li>
						<li><a href="#">Funcionarios</a></li>
						
					</ul></li>
					
					<li> <a href="#registerSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Deporte
				</a>
					<ul class="collapse list-unstyled" id="registerSubmenu">
						<li><a href="RegistrarDeporte.jsp">Registrar Deporte</a></li>
						<li><a href="#">Deportes</a></li>
						
					</ul></li>
					
					<li> <a href="#escenarioSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Escenario
				</a>
					<ul class="collapse list-unstyled" id="escenarioSubmenu">
						<li><a href="RegistrarEscenario.jsp">Registrar Escenario</a></li>
						<li><a href="#">Escenarios</a></li>
						
					</ul></li>
					
					<li> <a href="#inscripcionSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Inscripcion
				</a>
					<ul class="collapse list-unstyled" id="inscripcionSubmenu">
						<li><a href="RegistrarInscripcion.jsp">Inscripcion Equipo</a></li>
						<li><a href="RegistrarInscripcionJugador.jsp">Inscripcion Jugador</a></li>
						<li><a href="#">Equipos Inscritos </a></li>
						<li><a href="#">Jugadores Inscritos</a></li>
						
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
							<i class="glyphicon glyphicon-align-left"></i> <span></span>
						</button>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="../LoginSesionServlet?sesion">Salir</a></li>
						</ul>
					</div>
				</div>
			</nav>
            <!-- ACA VAN TODOS LOS FORMULARIOS-->
			 <!-- ACA TERMINAN TODOS LOS FORMULARIOS-->
			