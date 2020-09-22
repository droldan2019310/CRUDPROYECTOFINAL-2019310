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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
           <h1>Personas</h1>
           <a href="Controlador?accion=add">Agregar Registro</a>
           <table border="1">
            <thead>
                <tr>
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
                        <a href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona() %>"> Editar</a>
                        <a href="Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona() %>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
           </table>
        </div>
    </body>
</html>
