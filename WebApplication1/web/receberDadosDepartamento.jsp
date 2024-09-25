
 <%@page import="controlefuncionario.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        Departamento d = new Departamento();
        
        d.setDescDepto(request.getParameter("desc"));
        
        if (d.incluirDepartamento()) {
                response.sendRedirect("Departamento.jsp");
            }
%>