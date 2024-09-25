<%-- 
    Document   : alterarFuncionario
    Created on : 25 de set. de 2024, 09:05:23
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
       Funcionario f = new Funcionario();
       
      f.setIdFunc(Integer.parseInt(request.getParameter("id")));
      f.setNomeFunc(request.getParameter("nm"));
      f.setIdDepto(Integer.parseInt(request.getParameter("dd")));
      f.setSalHora(Double.parseDouble(request.getParameter("sl")));
      
 if (f.alterarFuncionario()) {
         response.sendRedirect("Funcionario.jsp");
     }
       %>
    </body>
</html>
