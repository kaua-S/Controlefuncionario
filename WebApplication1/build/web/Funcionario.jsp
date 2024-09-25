<%-- 
    Document   : Funcionario
    Created on : 13 de set. de 2024, 07:59:00
    Author     : kaua_mellato
--%>

<%@page import="java.util.*"%>
<%@page import="controlefuncionario.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilo/style.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    </head>
    <body>
          <nav class="menu">
  <ul>
      <li>
          
        <h1>Funcionario</h1>
        <i class="fas fa-plus-circle"> <a href="index.html">voltar</a></i>
      </a>
    </li>
    
    
  </ul>
</nav>
        
        <div class="container">
             <h1>Incluir</h1>
             <form method="post" action="IncluirFuncionario.jsp">
            <label for="Nm">Nome</label>
            <input id="Nm" type="text" name="nm" required>
            <label for="Dd">Id do Departamento</label>
            <input id="Dd" type="number" name="dd" required>
            <label for="SL">Salario por Hora</label>
            <input id="SL" type="number" name="sl" required>
            
            <button type="submit">Enviar</button>
        </form>
    </div>
        
         
        
        <div class="container">
        <h1>Alterar Departamento</h1>
        <form method="post" action="alterarFuncionario.jsp">
            <label for="IF">Id do Funcionario:</label>
            <input id="IF" type="number" name="id" required>
            <label for="Nm">Nome</label>
            <input id="Nm" type="text" name="nm" required>
            <label for="Dd">Id do Departamento</label>
            <input id="Dd" type="number" name="dd" required>
            <label for="SL">Salario por Hora</label>
            <input id="SL" type="number" name="sl" required>
            
            <button type="submit">Enviar</button>
        </form>
        
        
    </div>
        
         <%
          Funcionario f = new Funcionario();

            List<Funcionario> lista = new ArrayList<>();
            lista = f.listarFuncionario();
        %>

        <table class="table">
            <thead>
                
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                       <th scope="col"> Id do departamento</th>
                          <th scope="col">Salario por hora</th>
                    <th scope="col">Excluir</th>
                   
                    
                </tr>
            </thead>
            <% for (Funcionario fe : lista) {%>
            <tbody>
                <tr>
                    <th scope="row"><%= fe.getIdFunc() %></th>
                    <td><%= fe.getNomeFunc() %></td>
                     <td><%= fe.getIdDepto() %></td>
                      <td><%= fe.getSalHora() %></td>
                      <td><a href="excluirFuncionario.jsp?func=<%= fe.getIdDepto() %>">excluir</a></td>
          
            </tbody>
            <% }%>
        </table>
    </body>
</html>
