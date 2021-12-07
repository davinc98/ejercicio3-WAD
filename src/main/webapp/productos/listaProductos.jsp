<%-- 
    Document   : listaProductos
    Created on : 15 oct. 2021, 14:22:57
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

        <title>Productos</title>
    </head>
    <body>
        <div class="container">




            <div class="row">
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="ProductoServlet?accion=nuevo" class="btn btn-outline-success">Crear Producto</a>
                    </h4>
                </div>
                <div class="col">

                </div>
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="ProductoServlet?accion=graficar" class="btn btn-outline-primary" target="_blank">Mostrar Grafica</a>
                    </h4>
                </div>                 
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="ProductoServlet?accion=verReporte" class="btn btn-outline-danger" target="_blank">Mostrar Reporte</a>
                    </h4>
                </div>
            </div>

            <c:if test="${mensaje != null}">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>${mensaje}</strong>
                    <button class="btn-close" data-bs-dismiss="alert" aria-lbel="Close"></button>
                </div>
            </c:if>


            <div class="card border-primary">
                <div class="card-header text-center">
                    Productos
                </div>
                <div class="card-body">

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Clave</th>
                                <th>Nombre</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Existencia</th>
                                <th>Stock Minimo</th>
                                <th>Categoria (Clave)</th>
                                <th>Eliminar</th>
                                <th>Actualizar</th>
                                <th>Reporte</th>
                            </tr>
                        </thead>
                        <c:forEach var="dto" items="${listaDeProductos}">
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="ProductoServlet?accion=ver&id=<c:out value="${ dto.entidad.idProducto }"/>" class="btn btn-outline-warning">
                                            <c:out value="${ dto.entidad.idProducto }"/>
                                        </a>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.nombreProducto }"/>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.descripcionProducto }"/>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.precio }"/>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.existencia }"/>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.stockMinimo }"/>
                                    </td>
                                    <td>
                                        <c:out value="${ dto.entidad.claveCategoria }"/>
                                    </td>
                                    <td>
                                        <a href="ProductoServlet?accion=eliminar&id=<c:out value="${ dto.entidad.idProducto }"/>" class="btn btn-outline-danger">Eliminar</a>
                                    </td>
                                    <td>
                                        <a href="ProductoServlet?accion=actualizar&id=<c:out value="${ dto.entidad.idProducto }"/>" class="btn btn-outline-success">Actualizar</a>
                                    </td>
<!--                                    <td>
                                        <a href="#" class="btn btn-outline-info">Reporte</a>
                                    </td>-->
                                </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
