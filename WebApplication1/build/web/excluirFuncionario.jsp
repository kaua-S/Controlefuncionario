<%-- 
    Document   : excluirFuncionario
    Created on : 25 de set. de 2024, 08:58:55
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
        
        
        
        f.setIdFunc(Integer.parseInt(request.getParameter("func")));
        
        if (f.excluirFuncionario()) {
                response.sendRedirect("Funcionario.jsp");
            }
       
       
       %>
    </body>
</html>
