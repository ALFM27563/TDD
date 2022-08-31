<%-- 
    Document   : inicio
    Created on : 31/08/2022, 12:29:32 AM
    Author     : alan_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
                        HttpSession sesion = request.getSession();
                            
                        String idSession=sesion.getId();
                        String usuario=(String)sesion.getAttribute("usuario");
                        String email=(String)sesion.getAttribute("email");
                        if(usuario!=null)
                        {
                          out.println("<font face='Segoe UI'><br> Bienvenido! </font>");
                        
                        %>
                        <h1>Bienvenido <%=usuario%>!</h1>
                        <br><a href="Cerrarsesion.jsp">Cerrar sesión</a>
                        
                        <%
                            }else{
                            out.print("<font face='Segoe UI'>Por favor ingrese o registrese:<br></font>"); 
                            out.print("<a href='index.jsp'><button class='button' style='vertical-align:middle'><span>Iniciar sesión</span></button></a>");
                            
                        }
                    %>
    </body>
</html>
