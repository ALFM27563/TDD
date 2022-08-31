<%-- 
    Document   : cerrar_sesion
    Created on : 23/05/2022, 07:21:49 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% 
    HttpSession sesion=request.getSession();
    sesion.invalidate();
    out.println("<br>");
    out.println("<a href='index.jsp'>");
    out.println("Volver al inicio");
    out.println("</a>");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/fuente.css" rel="stylesheet" type="text/css">
        <title>Cerrar sesión</title>
    </head>
    <body>
        <h2>Sesión cerrada</h2>
        
        <h1>Esperamos que vuelvas pronto!</h1>
    </body>
</html>
