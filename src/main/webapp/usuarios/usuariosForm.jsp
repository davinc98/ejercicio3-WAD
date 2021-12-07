<%-- 
    Document   : productosForm
    Created on : 15 oct. 2021, 14:53:53
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

        <title>Formulario Usuario</title>
    </head>
    <body>
        
        
        



        <div class="card border-primary">
            <div class="card header">
                <h1 class="text-center">Datos Usuario</h1>
            </div>
            <div class="card card-body">
                <form method="post" action="UsuarioServlet?accion=guardar">
                    <div class="mb-3">
                        <label class="form-label">ID </label>
                        <input type="text" 
                               name="txtIdUsuario" 
                               id="txtIdUsuario" 
                               placeholder="Id del Usuario"
                               readonly value="<c:out value="${producto.entidad.idUsuario}"/>"
                               class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre: </label>
                        <input type="text" 
                               name="txtNombre" 
                               id="txtNombre" 
                               placeholder="Nombre del Usuario"
                               required
                               maxlenght="50"
                               value="<c:out value="${producto.entidad.nombre}"/>"
                               class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Paterno: </label>
                        <input type="text" 
                               name="txtPaterno" 
                               id="txtPaterno" 
                               placeholder="Apellido paterno"
                               required
                               maxlenght="100"
                               value="<c:out value="${producto.entidad.paterno}"/>"
                               class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Materno:  </label>
                        <input type="text" 
                               name="txtMaterno"  
                               id="txtMaterno" 
                               placeholder="Apellido materno" 
                               required
                               maxlenght="100"
                               value="<c:out value="${producto.entidad.materno}"/>"
                               class="form-control"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre Usuario: </label>                               
                        <input type="text" 
                               name="txtNombreUsuario" 
                               id="txtNombreUsuario"
                               placeholder="Nombre del Usuario" 
                               required
                               maxlenght="100"
                               value="<c:out value="${producto.entidad.nombreUsuario}"/>"
                               class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Clave: </label>                               
                        <input type="password" 
                               id="txtClaveUsuario" 
                               name="txtClaveUsuario" 
                               placeholder="Clave" 
                               required
                               maxlenght="100"
                               value="<c:out value="${producto.entidad.claveUsuario}"/>"
                               class="form-control"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email:  </label>
                        <input type="text"
                               name="txtEmail"                                 
                               id="txtEmail"
                               placeholder="Correo" 
                               required
                               maxlenght="100"
                               value="<c:out value="${producto.entidad.email}"/>"
                               class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tipo Usuario:  </label>
                        <input type="text"
                               name="txtTipoUsuario"                                 
                               id="txtTipoUsuario"
                               placeholder="Tipo Usuario" 
                               required
                               maxlenght="100"
                               value="<c:out value="${producto.entidad.tipoUsuario}"/>"
                               class="form-control" />
                    </div>
                               
                    <button type="submit" class="btn btn-outline-primary">Guadar</button>     
                </form>
            </div>
        </div>
    </body>
</html>
