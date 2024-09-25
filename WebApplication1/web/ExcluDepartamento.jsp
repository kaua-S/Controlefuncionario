<%-- 
    Document   : ExcluDepartamento
    Created on : 12 de set. de 2024, 08:36:46
    Author     : kaua_mellato
--%>

<%@page import="controlefuncionario.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Departamento der = new Departamento();
        
        
        
        der.setIdDepto(Integer.parseInt(request.getParameter("des")));
        
        if (der.excluirDepartamento()) {
                response.sendRedirect("Departamento.jsp");
            }
        %>
    </body>
</html>
