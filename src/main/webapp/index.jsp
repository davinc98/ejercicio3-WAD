<%-- 
    Document   : index
    Created on : 14 oct. 2021, 11:56:57
    Author     : leoj_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>

        <title>Ejercicio3</title>
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
                                <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet?accion=listaDeCategorias">Listado De Categorias</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet?accion=nuevo">Nueva Categoria</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Listado de Productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Nuevo Producto</a>
                            </li>
                            <!--        <li class="nav-item dropdown">
                                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Dropdown link
                                      </a>
                                      <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                      </ul>
                                    </li>-->
                        </ul>
                    </div>
                </div>
            </nav>



        </div>
    </body>
</html>
