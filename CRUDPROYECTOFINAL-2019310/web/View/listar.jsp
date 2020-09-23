    <%--
    Document   : listar
    Created on : Sep 22, 2020, 2:35:14 AM
    Author     : Spencer Ortiz
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.Persona"%>
<%@page import="java.util.List"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Personas</title>
        <link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="css/personas.png">
    </head>
    <body>
        <header>
            <div>
                <h1 style="font-family: Bebas Neue;padding: 7px">Personas</h1>
            </div>
            <div class="listar">
                <a class="link" href="index.jsp">INICIO</a>
            </div>
        </header>
        <div class="tablas" style="display:flex;justify-content:center;align-items:center;height:90%;">
                        <div>
                            <table class="table table-bordered" style="background-color: rgba(255,255,255,0.9); text-align: center;font-family:Bebas Neue;">
                            <thead style="background-color: #212121">
                                <tr style="color:whitesmoke;font-size: 18px;">
                                   <td>CODIGO PERSONA</td>
                                   <td>DPI</td>
                                   <td>NOMBRES</td>
                                   <td>ACCIONES</td>
                                </tr>
                            </thead>
                            <%
                                PersonaDAO dao = new PersonaDAO();
                                List<Persona> listaPersona = dao.listar();
                                Iterator<Persona> iterator = listaPersona.iterator();
                                Persona per = null;
                                while(iterator.hasNext()){
                                    per = iterator.next();

                                %>
                            <tbody>
                                <tr>
                                    <td><%= per.getCodigoPersona()%></td>
                                    <td><%= per.getDPI()%></td>
                                    <td><%= per.getNombrePersona()%></td>
                                    <td>
                                        <a class="btn btn-outline-primary"  href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona() %>"> Editar</a>
                                        <a class="btn btn-outline-danger" href="Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona() %>">Eliminar</a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                           </table>
                            <div style="display:flex;justify-content:center;align-items:center;">
                                <a class="btn btn-outline-dark btn-lg mx-auto" style="font-family: Bebas Neue;" href="Controlador?accion=add">Agregar Registro</a>
                            </div>
                        </div>  
                         
                    </div>
            
    </body>
</html>
