<%-- 
    Document   : categoriasForm
    Created on : 14 oct. 2021, 11:43:17
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

        <title>Formulario Categoria</title>
    </head>
    <body>
        
        
        
        
        <h1>Actualizar Categoria</h1>


        <div class="card border-primary">
            <div class="card header">
                <h1 class="text-center">Datos Categoria</h1>
            </div>
            <div class="card card-body">
                <form method="post" action="CategoriaServlet?accion=guardar">
                    <div class="mb-3">
                        <label class="form-label">ID </label>
                        <input type="text" 
                               name="txtIdCategoria" 
                               id="txtIdCategoria" 
                               placeholder="Id de la categoria"
                               readonly value="<c:out value="${categoria.entidad.idCategoria}"/>"
                               class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nombre: </label>
                        <input type="text" 
                               name="txtNombreCategoria" 
                               id="txtNombreCategoria" 
                               placeholder="Nombre de la categoria"
                               required
                               maxlenght="50"
                               value="<c:out value="${categoria.entidad.nombreCategoria}"/>"
                               class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripcion: </label>
                        <input type="text" 
                               name="txtDescripcionCategoria" 
                               id="txtDescripcionCategoria" 
                               placeholder="Descripcion de la categoria"
                               required
                               maxlenght="100"
                               value="<c:out value="${categoria.entidad.descripcionCategoria}"/>"
                               class="form-control" />
                    </div>
                    <button type="submit" class="btn btn-outline-primary">Guadar Cambios</button>     
                </form>
            </div>
        </div>
    </body>
</html>
