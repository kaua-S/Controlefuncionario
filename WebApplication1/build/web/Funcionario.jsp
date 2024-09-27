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
            <label for="dep">Nome</label>
            <input id="dep" type="text" name="nm" required>
            <label for="dep">Id do Departamento</label>
            <input id="dep" type="text" name="derp" required>
            <label for="dep">Salario por hora</label>
            <input id="dep" type="text" name="sh" required>
            <button type="submit">Enviar</button>
        </form>
    </div>
        
         
        
        <div class="container">
        <h1>Alterar Funcionario</h1>
        <form method="post" action="AlterarFuncionario.jsp">
             <label for="dep">Id do Funcionario</label>
            <input id="dep" type="text" name="id" required>
            <label for="dep">Nome</label>
            <input id="dep" type="text" name="nm" required>
            <label for="dep">Id do Departamento</label>
            <input id="dep" type="text" name="derp" required>
            <label for="dep">Salario por hora</label>
            <input id="dep" type="text" name="sh" required>
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
                     <th scope="col">Numero do Departamento</th>
                      <th scope="col">Salario por Hora</th>
                    <th scope="col">Excluir</th>
                   
                    
                </tr>
            </thead>
            <% for (Funcionario de : lista) {%>
            <tbody>
                <tr>
                    <th scope="row"><%= de.getIdFunc() %></th>
                    <td><%= de.getNomeFunc() %></td>
                    <td><%= de.getIdDepto() %></td>
                    <td><%= de.getSalHora() %></td>
                    <td><a href="ExcluirFuncionario.jsp?id=<%= de.getIdFunc() %>">excluir</a></td>
          
            </tbody>
            <% }%>
        </table>
    </body>
</html>
