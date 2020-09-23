<%--
    Document   : editar
    Created on : Sep 22, 2020, 2:35:01 AM
    Author     : Spencer Ortiz
--%>

<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Persona</title>
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
            <h1 style="font-family: Bebas Neue; padding: 10px;">Modificar Persona</h1>
            <div class="listar">
                <a class="link" href="Controlador?accion=listar">Listar Personas</a>
            </div>
        </header>
        <img style="float: left; padding: 10px; position: fixed; animation: fadeInDown 4s 1, levitate 3s infinite;" src="css/persona2.png" alt=""/>
        <div style="height: 90%; width: 100%;">
            <%
                PersonaDAO nuevaPersonaDao = new PersonaDAO();
                int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                Persona nuevaPersona = (Persona)nuevaPersonaDao.list(codPersona);

            %>
            <div style="height:100%;display:flex;justify-content:center;align-items:center; animation: fadeInDown 3s 1;">
                <div <div class="caja">
                    <form action="Controlador" style="font-family: Bebas Neue; font-size: 3vh;">
                        DPI:<br>
                        <input class="form-control" style="width: 25vw;" type="text" name="txtDPI" value="<%=nuevaPersona.getDPI() %>" required><br>
                        Nombre:<br>
                        <input class="form-control" style="width: 25vw;" type="text" name="txtNombre" value="<%=nuevaPersona.getNombrePersona() %>" required><br>
                        <input  type="hidden" name="txtCodigoPersona" value="<%=nuevaPersona.getCodigoPersona() %>">
                        <input class="btn btn-outline-primary btn-block" type="submit" name="accion" value="Actualizar">

                    </form>
                </div>
                <div style="position: absolute; right: 0; bottom: 0;padding: 10px;">
                   <img style="float: right; animation: fadeInDown 4s 1, levitate 3s infinite;" src="css/empleado.png" alt=""/>
                </div>
                    
            </div>
        </div>
    </body>
</html>
