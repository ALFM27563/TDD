<%@page import="bean.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="bean.LoginBean"%>
<%@page import="bean.LoginDao"%>

<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login Accesso</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        
        <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    
                    <hr class="section-heading-spacer">
                    
                    <div class="clearfix"></div>
                    
                    
<%
    
boolean status=LoginDao.validate(obj);
String  qry="SELECT* FROM usuario WHERE usu_nomusuario=? and usu_password=?;";
Connection con=ConnectionProvider.getCon();
            PreparedStatement ps;
            ResultSet rs;
            String usuario=(String)request.getParameter("Usuario");
            String password=(String)request.getParameter("Password");
            ps=con.prepareStatement("SELECT* FROM usuario WHERE usu_nomusuario=? and usu_password=?;");
            ps.setString(1, usuario);
            ps.setString(2, password);
            rs=ps.executeQuery();

if(rs.next()){
                
            /*Se crea la sesion*/
        HttpSession sesion = request.getSession();
        /* Se le agregan los atributos que necesiten*/
        sesion.setAttribute("usuario", usuario);
        /* A manera de prueba se muestran los datos de la sesion */
        String idSesion=sesion.getId();
        /*Los  mostramos en el navegador*/
        out.println("<br>Se ha establecido una sesión con lo siguiente");
        out.println("<br>IdSesion: "+idSesion);
        out.println("<br>usuario: "+usuario);
        out.println("<br>password: "+password);
        out.println("<br><br>");
        out.println("<a href='../bienvenida.jsp'>Mostrar bienvenida</a>");
    session.setAttribute("session","TRUE");
    out.println("Felicidades, has ingresado correctamente\n" );
    response.sendRedirect("inicio.jsp");
%>
<br><br><a href="index.jsp">Ingresar</a>
<%
}
else
{
    



out.print("Usuario o contraseña son incorrectos o no están registrados en la base de datos.");


}
rs.close();

%>
                <br><br><a href="index.jsp">Regresar al inicio</a>
                            
                    <hr class="section-heading-spacer">
                    
                
                </div>
                
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="img/registro.jpg" alt="">
                </div>
                
            </div>

        </div>
        

    </div>
        
    </body>
</html>