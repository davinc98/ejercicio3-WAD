<%-- 
    Document   : datosProducto
    Created on : 15 oct. 2021, 14:55:27
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

        <title>Datos de Producto</title>
    </head>
    <body>
        <h1>Producto</h1>

        <div class="container">





            <div class="card bg-light">
                <div class="card-header">
                    <h3 class="text-center">Datos de Producto</h3>
                </div>
                <div class="card-body">
                    <center>
                        <img src="./imagenes/bootstrap-logo.svg" alt="" width="200" height="240" class="d-inline-block align-text-top">
                        <ul class="list-group">
                            <li class="list-group-item">
                                
                                <c:out value="${producto.entidad.idProducto}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.nombreProducto}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.descripcionProducto}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.precio}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.existencia}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.stockMinimo}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.claveCategoria}" />
                            </li>
                        </ul>
                    </center>
                </div>
            </div>

        </div>
    </body>
</html>
