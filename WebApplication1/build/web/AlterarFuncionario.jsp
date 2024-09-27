<%-- 
    Document   : AlterarFuncionario
    Created on : 27 de set. de 2024, 08:41:22
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
       f.setNomeFunc(request.getParameter("nm"));
       f.setIdDepto(Integer.parseInt(request.getParameter("derp")));
       f.setSalHora(Double.parseDouble(request.getParameter("sh")));
       
       if (f.alterarFuncionario()) {
               response.sendRedirect("Funcionario.jsp");
           }
 
      %>
    </body>
</html>
