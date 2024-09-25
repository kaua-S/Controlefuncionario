<%-- 
    Document   : alterarDepartamento
    Created on : 12 de set. de 2024, 10:12:48
    Author     : kaua_mellato
--%>

<%@page import="java.util.*"%>
<%@page import="controlefuncionario.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilo/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Departamento d = new Departamento();
       
        
       d.setIdDepto(Integer.parseInt(request.getParameter("id")));
       d.setDescDepto(request.getParameter("desc")); 


         
           if (d.alterarDepartamento()) {
            response.sendRedirect("Departamento.jsp");
            }
        %>
        
    </body>
</html>
