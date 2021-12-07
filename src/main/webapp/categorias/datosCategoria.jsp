<%-- 
    Document   : datosCategoria
    Created on : 14 oct. 2021, 11:51:37
    Author     : leoj_
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>

        <title>Datos de Categoria</title>
    </head>
    <body>


        <div class="container">


            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="/imagenes/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
                        J. Perez
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet?accion=listaDeCategorias">Listado De Categorias</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet?accion=nuevo">Nueva Categoria</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ProductoServlet?accion=listaDeProductos">Listado de Productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ProductoServlet?accion=nuevo">Nuevo Producto</a>
                            </li>
                            <!--                            <li class="nav-item">
                                                            <a class="nav-link" href="UsuarioServlet?accion=listaDeUsuarios">Listado de Usuarios</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="UsuarioServlet?accion=nuevo">Nuevo Usuario</a>-->
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <br/>

            <div class="col-sm-4">

                <div class="card bg-light">
                    <div class="card-header">
                        <h3 class="text-center">Datos de Categoria</h3>
                    </div>
                    <div class="card-body">
                        <img src="./imagenes/bootstrap-logo.svg" alt="" width="200" height="240" class="d-inline-block align-text-top">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <c:out value="${categoria.entidad.idCategoria}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${categoria.entidad.nombreCategoria}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${categoria.entidad.descripcionCategoria}" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
