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

        <title>Usuarios</title>
    </head>
    <body>
        <div class="container">





            <div class="card border-primary">
                <div class="card-header text-center">
                    Usuarios
                </div>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="UsuarioServlet?accion=nuevo" class="btn btn-outline-success">Crear Usuario</a>
                    </h4>
                    
                    <c:if test="${mensaje != null}">
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>${mensaje}</strong>
                            <button class="btn-close" data-bs-dismiss="alert" aria-lbel="Close"></button>
                        </div>
                    </c:if>
                    
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Paterno</th>
                                <th>Materno</th>
                                <th>Email</th>
                                <th>Tipo Usuario</th>
                                <th>Eliminar</th>
                                <th>Actualizar</th>
                                <th>Reporte</th>
                            </tr>
                        </thead>
                        <c:forEach var="dto" items="${listaDeUsuarios}">
                        <tbody>
                            <tr>
                                <td>
                                    <a href="UsuarioServlet?accion=ver&id=<c:out value="${ dto.entidad.idUsuario }"/>" class="btn btn-outline-warning">
                                        <c:out value="${ dto.entidad.idUsuario }"/>
                                    </a>
                                </td>
                                <td>
                                    <c:out value="${ dto.entidad.nombre }"/>
                                </td>
                                <td>
                                    <c:out value="${ dto.entidad.paterno }"/>
                                </td>
                                <td>
                                    <c:out value="${ dto.entidad.materno }"/>
                                </td>
                                <td>
                                    <c:out value="${ dto.entidad.email }"/>
                                </td>
                                <td>
                                    <c:out value="${ dto.entidad.tipoUsuario }"/>
                                </td>
                                <td>
                                    <a href="UsuarioServlet?accion=eliminar&id=<c:out value="${ dto.entidad.idUsuario }"/>" class="btn btn-outline-danger">Eliminar</a>
                                </td>
                                <td>
                                    <a href="UsuarioServlet?accion=actualizar&id=<c:out value="${ dto.entidad.idUsuario }"/>" class="btn btn-outline-success">Actualizar</a>
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
