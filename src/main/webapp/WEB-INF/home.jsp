<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Lista de Autos</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<title>Home::</title>
</head>
<body>

<jsp:include page='template/navbar.jsp'>
<jsp:param name='title' value='Sistema Web' />
</jsp:include>

	<div class="container">

		<form:form action="/auto/insertar" method="post" modelAttribute="auto">
			<form:label path="marca">Marca:</form:label>
			<br>
			<form:input path="marca" class="form-control" />
			<br>

			<form:label path="motor">Motor:</form:label>
			<br>
			<form:input path="motor" class="form-control" />
			<br>

			<form:label path="color">Color:</form:label>
			<br>
			<form:input path="color" class="form-control" />
			<br>

			<form:label path="velocidad">Velocidad:</form:label>
			<br>
			<form:input path="velocidad" class="form-control" />
			<br>

			<button type="submit" class="btn btn-primary">Crear Auto</button>

		</form:form>

		<br>
		<h1>
			<c:out value="${titulo}"></c:out>
		</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Marca</th>
					<th scope="col">Motor</th>
					<th scope="col">Velocidad</th>
					<th scope="col">Color</th>
					<th scope="col">Accion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listaAutos}" var="auto">

					<tr>
						<th scope="row"><c:out value="${auto.id}"></c:out></th>
						<td><c:out value="${auto.marca}"></c:out></td>
						<td><c:out value="${auto.motor}"></c:out></td>
						<td><c:out value="${auto.velocidad}"></c:out></td>
						<td><c:out value="${auto.color}"></c:out></td>

						<td><a class="btn btn-outline-info"
							href="/auto/editar/${auto.id}" role="button">Editar</a> <a
							class="btn btn-outline-danger" href="/auto/eliminar/${auto.id}"
							role="button">Eliminar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<hr>
		<h1>Listado Clientes</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nombre</th>
					<th scope="col">Apellido</th>
					<th scope="col">Correo</th>
					<th scope="col">Direccion</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listaClientes}" var="cliente">

					<tr>
						<th scope="row"><c:out value="${cliente.id}"></c:out></th>
						<td><c:out value="${cliente.nombre}"></c:out></td>
						<td><c:out value="${cliente.apellido}"></c:out></td>
						<td><c:out value="${cliente.correo}"></c:out></td>
						<td><c:out value="${cliente.direccion.nombre}"></c:out>&nbsp;
							<c:out value="${cliente.direccion.numero}"></c:out></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<br>
		<hr>
		<h1>Listado Compra</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Fecha</th>
					<th scope="col">Fecha 2</th>
					<th scope="col">Monto</th>
					<th scope="col">Cliente</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listaCompras}" var="compra">

					<tr>
						<th scope="row"><c:out value="${compra.id}"></c:out></th>
						<td><c:out value="${compra.fecha}" ></c:out></td>
						<td><fmt:formatDate value="${compra.fecha}" pattern="HH:mm:ss" /></td>
						<td><c:out value="${compra.monto}"></c:out></td>
						<td><c:out value="${compra.cliente.nombre}"></c:out>&nbsp;
							<c:out value="${compra.cliente.apellido}"></c:out></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
<jsp:include page='template/footer.jsp'>
<jsp:param name='title' value='Sistema Web' />
</jsp:include>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>