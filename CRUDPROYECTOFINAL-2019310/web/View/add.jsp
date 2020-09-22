<%-- 
    Document   : add
    Created on : Sep 22, 2020, 2:32:24 AM
    Author     : Spencer Ortiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Agregar</title>
    </head>
    <body>
        <div>
            <h1>Agregar Registro</h1>
            <form action="Controlador">
                DPI:<br>
                <input type="text" name="txtDPI"> <br><br>
                Nombres:<br>
                <input type="text" name="txtNombre"> <br><br>
                <input type="submit" name="accion" value="Agregar"> <br>
            </form>
        </div>
    </body>
</html>
