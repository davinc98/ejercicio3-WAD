<%-- 
    Document   : listaCategorias
    Created on : 14 oct. 2021, 10:55:42
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

        <title>Categorias</title>
    </head>
    <body>
        <div class="container">




            
            <br/>
            <h1>Categorias</h1>
            <br/>
            <br/>

            <div class="row">
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="CategoriaServlet?accion=nuevo" class="btn btn-outline-success">Crear Categoria</a>
                    </h4>
                </div>
                <div class="col">
                    
                </div>
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="CategoriaServlet?accion=graficar" class="btn btn-outline-primary" target="_blank">Mostrar Grafica</a>
                    </h4>
                </div>                 
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="CategoriaServlet?accion=verReporte" class="btn btn-outline-danger" target="_blank">Mostrar Reporte</a>
                    </h4>
                </div>
            </div>

            <br/>
            
            <div class="card border-primary">
                <div class="card-header text-center">
                    Categorias
                </div>
                <div class="card-body">

                    <c:if test="${mensaje != null}">
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>${mensaje}</strong>
                            <button class="btn-close" data-bs-dismiss="alert" aria-lbel="Close"></button>
                        </div>
                    </c:if>

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Clave</th>
                                <th>Nombre</th>
                                <th>Descripcion</th>
                                <th>Eliminar</th>
                                <th>Actualizar</th>
                                <th>Reporte</th>
                            </tr>
                        </thead>
                        <c:forEach var="dto" items="${listaDeCategorias}">
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="CategoriaServlet?accion=ver&id=<c:out value="${ dto.entidad.idCategoria }"/>" class="btn btn-outline-warning">
                                            <c:out value="${ dto.entidad.idCategoria }"/>
                                        </a>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.nombreCategoria }"/>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.descripcionCategoria }"/>
                                    </td>
                                    <td>
                                        <a href="CategoriaServlet?accion=eliminar&id=<c:out value="${ dto.entidad.idCategoria }"/>" class="btn btn-outline-danger">Eliminar</a>
                                    </td>
                                    <td>
                                        <a href="CategoriaServlet?accion=actualizar&id=<c:out value="${ dto.entidad.idCategoria }"/>" class="btn btn-outline-success">Actualizar</a>
                                    </td>
                                    <td>
                                        <a href="#" class="btn btn-outline-info">Reporte</a>
                                    </td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
