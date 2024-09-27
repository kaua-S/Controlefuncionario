<%-- 
    Document   : ExcluirFuncionario
    Created on : 27 de set. de 2024, 08:46:34
    Author     : kaua_mellato
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
               Funcionario f = new Funcionario();

        f.setIdFunc(Integer.parseInt(request.getParameter("id")));
        
        if (f.excluirFuncionario()) {
                response.sendRedirect("Funcionario.jsp");
            }
        %>
        %>
    </body>
</html>
