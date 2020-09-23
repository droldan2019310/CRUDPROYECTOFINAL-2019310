<%-- 
    Document   : index
    Created on : Sep 22, 2020, 10:22:17 AM
    Author     : Spencer Ortiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
        <link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="css/personas.png">
    </head>
    <body>
        <header>
            <div style="padding:5px;">
                <h1 style="font-family: Bebas Neue">PROYECTO FINAL - CRUD PERSONA</h1>
            </div>
            <div class="listar">
                <a class="link" href="Controlador?accion=listar">Listar Personas</a>
            </div>
        </header>
        <div class="col-xl-12" style="margin-top: 5vh;">
            
            <div class="imagen col-md-6">
                <img src="css/laptop.png">
            </div>
            
            <div class="imagen col-md-5" style="float:right; display:flex;justify-content:flex-end;align-items:center;">
                <img src="css/tablet.png">
            </div>
            <div class="col-md-12" style="text-align: center; padding: 10px;">
                <h2 style="font-family: Bebas Neue; font-size: 8vh;">
                    Proyecto IN5BV- fila 2 <br>
                    fundación kinal
                </h2>
            </div>
            <div class="imagen col-md-6">
                <img src="css/telefono.png">
            </div>
            
            <div  class="imagen col-md-5" style="float:right; display:flex;justify-content:flex-end;align-items:center;">
                <img src="css/computadora.png">
            </div>
            
        </div>
    </body>
</html>
