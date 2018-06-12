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
						class="glyphicon glyphicon-home"></i> Home
				</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">Home 1</a></li>
						<li><a href="#">Home 2</a></li>
						<li><a href="#">Home 3</a></li>
					</ul></li>
				<li><a href="#"> <i class="glyphicon glyphicon-briefcase"></i>
						About
				</a> <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
						<i class="glyphicon glyphicon-duplicate"></i> Pages
				</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="#">Page 1</a></li>
						<li><a href="#">Page 2</a></li>
						<li><a href="#">Page 3</a></li>
					</ul></li>
				<li><a href="#"> <i class="glyphicon glyphicon-link"></i>
						Portfolio
				</a></li>
				<li><a href="#"> <i class="glyphicon glyphicon-paperclip"></i>
						FAQ
				</a></li>
				<li><a href="#"> <i class="glyphicon glyphicon-send"></i>
						Contact
				</a></li>
			</ul>

			<ul class="list-unstyled CTAs">
				<li><a
					href="https://bootstrapious.com/tutorial/files/sidebar.zip"
					class="download">Download source</a></li>
				<li><a href="https://bootstrapious.com/p/bootstrap-sidebar"
					class="article">Back to article</a></li>
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
				<div class="col-xs-12 col-sm-2"></div>
				<div class="col-xs-12 col-sm-8 " id="border">
					<h2>Registrar Mensajeros</h2>
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