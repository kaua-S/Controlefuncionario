<%-- 
    Document   : IncluirFuncionario
    Created on : 25 de set. de 2024, 08:53:15
    Author     : Aluno
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
        Funcionario f = new  Funcionario();
        
        f.setNomeFunc(request.getParameter("nm"));
        f.setIdDepto(Integer.parseInt(request.getParameter("dd")));
        f.setSalHora(Double.parseDouble(request.getParameter("sl")));
        
       if ( f.incluirFuncionario()) {
               response.sendRedirect("Funcionario.jsp");
           }
        %>
    </body>
</html>
