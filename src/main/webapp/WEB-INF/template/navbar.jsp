	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">${param.title}</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/homes">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/auto">Autos</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/cliente">Clientes</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/direccion">Direccion</a>
					</li>
				</ul>
				<div class="d-flex">
					<div class="btn-group dropstart">
						<button type="button" class="btn btn-secondary dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">${param.usuario} </button>
						<ul class="dropdown-menu" style="">
							<li><a class="dropdown-item" href="#">Editar</a></li>
							<li><a class="dropdown-item" href="#">Inicio</a></li>
							<li><hr class="dropdown-divider"></li>
							<li>
							<form id="logoutForm" method="POST" action="/logout">
						        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						        <input class="dropdown-item" type="submit" value="Cerrar Sesión" />
						    </form>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>