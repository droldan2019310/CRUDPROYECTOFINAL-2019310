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
        <link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="css/personas.png">
    </head>
    <body style="height:100%;">
        <header>
            <h1 style="font-family: Bebas Neue;">Agregar Registro</h1>
            <div class="listar">
                <a class="link" href="Controlador?accion=listar">Listar Personas</a>
            </div>
        </header>
        <img style="float: left; padding: 10px; position: fixed; animation: fadeInDown 4s 1, levitate 3s infinite;" src="css/persona2.png" alt=""/>
        <div style="height: 90%; width: 100%;">
            <div style="height:100%;display:flex;justify-content:center;align-items:center; animation: fadeInDown 3s 1;">
                <div class="caja">
                    <form action="Controlador" style="font-family: Bebas Neue; font-size: 3vh;">
                        DPI:<br>
                        <input class="form-control" style="width: 25vw;" type="text" name="txtDPI" placeholder="Ingrese su DPI" required> <br><br>
                        Nombres:<br>
                        <input class="form-control" style="width: 25vw;" type="text" name="txtNombre" placeholder="Ingrese su Nombre" required> <br><br>
                        <input class="btn btn-outline-danger btn-block" type="submit" name="accion" value="Agregar"> <br>
                    </form>
                </div>
            </div>
            <div style="position: absolute; right: 0; bottom: 0;padding: 10px;">
                <img style="float: right; animation: fadeInDown 4s 1, levitate 3s infinite;" src="css/empleado.png" alt=""/>
            </div>
        </div>
    </body>
</html>
