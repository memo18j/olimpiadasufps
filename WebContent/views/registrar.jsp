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
							<li><a href="#">Salir</a></li>
						</ul>
					</div>
				</div>
			</nav>
            <!-- ACA VAN TODOS LOS FORMULARIOS-->
			<div class="row">
				<div class="col-xs-12 col-sm-2"></div>
				<div class="col-xs-12 col-sm-8 " id="border">
					<h2>Registrar </h2>
					<form action="">
						<div class="form-group col-xs-12 col-sm-6">
							<label for="1nombre">Primer nombre:</label> <input type="text"
								class="form-control" id="1nombre" placeholder="Primer nombre"
								name="1nombre">
						</div>
						<div class="form-group col-xs-12 col-sm-6">
							<label for="2nombre">Segundo nombre:</label> <input type="text"
								class="form-control" id="2nombre" placeholder="segundo nombre"
								name="2nombre">
						</div>
						<div class="form-group col-xs-12 col-sm-6">
							<label for="1apellido">Primer apellido:</label> <input
								type="text" class="form-control" id="1apellido"
								placeholder="primer apellido" name="1apellido">
						</div>
						<div class="form-group col-xs-12 col-sm-6">
							<label for="2apellido">Segundo apellido:</label> <input
								type="text" class="form-control" id="2apellido"
								placeholder="segundo apellido" name="2apellido">
						</div>
						<div class="form-group col-xs-12 col-sm-6">
							<label for="sel1">Tipo documento:</label> <select
								class="form-control" id="sel1">
								<option>--Seleccione Documento--</option>
								<option>Cedula de ciudadania</option>
								<option>Cedula de extranjeria</option>
								<option>Tarjeta de identidad</option>
							</select>
						</div>
						<div class="form-group col-xs-12 col-sm-6">
							<label for="documento">Numero documento:</label> <input
								type="text" class="form-control" id="documento"
								placeholder="numero documento" name="documento">
						</div>
						<div class="form-group col-xs-12 col-sm-6">
							<h5>
								<label>Sexo:</label>
							</h5>
							<label class="radio-inline"> <input type="radio"
								name="radiomasculino">Masculino
							</label> <label class="radio-inline"> <input type="radio"
								name="radiofemenino">Femenino
							</label>
						</div>
						<div class="form-group col-xs-12 col-sm-6">
							<label for="telefono">telefono:</label> <input type="text"
								class="form-control" id="telefono" placeholder="telefono"
								name="telefono">
						</div>
						<div class="form-group col-xs-12 col-sm-12">
							<label for="direccion">Direccion:</label> <input type="text"
								class="form-control" id="direccion" placeholder="direccion"
								name="direccion">
						</div>
						<div class="form-group col-xs-12 col-sm-12">
							<label for="email">Email::</label> <input type="email"
								class="form-control" id="email" placeholder="correo electronico"
								name="email">
						</div>
						<div class="form-group col-xs-12 col-sm-12">
							<button type="submit" class="btn btn-success" id="button">Registrar</button>
						</div>
					</form>
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