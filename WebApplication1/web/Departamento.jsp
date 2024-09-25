 <%@page import="java.util.*"%>
<%@page import="controlefuncionario.Departamento"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Controle Funcionario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
          
        <h1>Departamento</h1>
        <i class="fas fa-plus-circle"> <a href="index.html">voltar</a></i>
      </a>
    </li>
    
    
  </ul>
</nav>
        
        <div class="container">
             <h1>Incluir</h1>
        <form method="post" action="receberDadosDepartamento.jsp">
            <label for="dep">Descrição do Departamento:</label>
            <input id="dep" type="text" name="desc" required>
            <button type="submit">Enviar</button>
        </form>
    </div>
        
         
        
        <div class="container">
        <h1>Alterar Departamento</h1>
        <form method="post" action="alterarDepartamento.jsp">
            <label for="dep">Id do departamento:</label>
            <input id="dep" type="number" name="id" required>
            <label for="dep">descrição do departamento:</label>
            <input id="dep" type="text" name="desc" required>
            
            <button type="submit">Enviar</button>
        </form>
        
        
    </div>
        
         <%
            Departamento d = new Departamento();

            List<Departamento> lista = new ArrayList<>();
            lista = d.listarDeptos();
        %>

        <table class="table">
            <thead>
                
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Descrição</th>
                    <th scope="col">Excluir</th>
                   
                    
                </tr>
            </thead>
            <% for (Departamento de : lista) {%>
            <tbody>
                <tr>
                    <th scope="row"><%= de.getIdDepto()%></th>
                    <td><%= de.getDescDepto()%></td>
                    <td><a href="ExcluDepartamento.jsp?des=<%= de.getIdDepto() %>">excluir</a></td>
          
            </tbody>
            <% }%>
        </table>

    </body>
</html>
