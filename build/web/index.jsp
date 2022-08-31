<%-- 
    Document   : index
    Created on : 29/08/2022, 09:13:39 PM
    Author     : alan_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/login.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1></h1>
                    <div class="login">
              <div class="login-triangle"></div>

              <h2 class="login-header"><img src="css/escudo.png" width="150" height="150"> Sistema de Administración de Procesos <br> para el Campus virtual CECyT9 </h2>

              <form class="login-container" action="loginprocess.jsp">
                <p><input type="Usuario" placeholder="Usuario" name="Usuario"></p>
                <p><input type="password" placeholder="Password" name="Password"></p>
                <p><input type="submit" value="Ingresar"></p>
              </form>
</div>
    </body>
</html>
