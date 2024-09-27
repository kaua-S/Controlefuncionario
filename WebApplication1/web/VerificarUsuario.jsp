<%-- 
    Document   : VerificarUsuario
    Created on : 27 de set. de 2024, 09:35:14
    Author     : kaua_mellato
--%>

<%@page import="controlefuncionario.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       Usuario u = new Usuario();
       
       u.setEmail(request.getParameter("em"));
       u.setSenha(request.getParameter("sh"));
       
       if (u.verificarlogin() != null) {
               response.sendRedirect("Inicio.jsp");
           }else{
            response.sendRedirect("index.html");
           }
       
       %>
    </body>
</html>
