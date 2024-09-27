<%-- 
    Document   : IncluirUsuario
    Created on : 27 de set. de 2024, 12:02:31
    Author     : kaua_mellato
--%>

<%@page import="controlefuncionario.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="estilo/style.css"/>
    </head>
    <body>
         <nav class="menu">
  <ul>
      <li>
          
        <h1>Login</h1>
       
     
    </li>
    
    
  </ul>
</nav>
        
        <div class="container">
             <h1>Novo Usuario</h1>
             <form method="post" action="IncluirUsuario.jsp">
            <label for="dep">Insira seu E-mail</label>
            <input id="dep" type="text" name="em" required>
            <label for="dep">Insira sua Senha</label>
            <input id="dep" type="text" name="sh" required>
            <button type="submit">Enviar</button>
        </form>
            <a href="Inicio.jsp">Não possui usuario ?</a>  
    </div>
        <%
        Usuario u = new Usuario();
        
        u.setEmail(request.getParameter("em"));
        u.setSenha(request.getParameter("sh"));
        
       if (u.incluirUsuario()) {
               response.sendRedirect("index.html");
           }
        
        %>
    </body>
</html>
