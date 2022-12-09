<%-- 
    Document   : index
    Created on : 16-sep-2022, 19:06:54
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>

        <link href="vistas2/assets/dist/css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="preaload" href="vistas2/css/normalize.css" as="style">
        <link href="vistas/css/normalize.css" rel="preload" type="text/css"/>
        <!-- hoja de estilos -->
        <link rel="preaload" href="vistas2/css/styles.css" as="style">
        <link rel="stylesheet" href="vistas2/css/styles.css">
    </head>
    <body class="bg-login">
        <!-- header -->
        <div class="bg-header header-login">
            <header class="container header">
             
                <img src="vistas2/assets/dist/img/LogoIndex.png" alt=""/>
            </header>
        </div>
        <!-- fin de header -->

        <div class="bg-formulario">
            <form class="formulario" id="form" name="frmIniSes" action="iniciarSesControlador" method="post">

                <legend>Inicio de Sesion</legend>
                <fieldset class="formulario__fieldset">

                    <div class="input-contenedor">
                        <i class="fa-solid fa-user icon"></i>
                        <input type="Text" placeholder="Usuario" name="nombre_usuario">
                    </div>

                    <div class="input-contenedor">
                        <i class="fa-solid fa-key icon"></i>
                        <input type="password" placeholder="Contraseña"  name="clave_usuario" id="password">
                    </div>

                    <input id="btn-Inicio" type="submit" value="Iniciar">
                </fieldset>
            </form>
        </div>

        <!-- footer -->
        <footer class="bg-footer">
            <div class="container">
                <a href="#">Terminos y condiciones</a>
                <span> | </span>
                <a href="#">Politicas de privacidad</a>
                <span> | </span>
                <a href="#">Contacto</a>
                <p>Copyright © 2012 - 2022 Instituto Superior Tecnologico Espiritu Santo </p>
            </div>
        </footer>
        <!-- fin de footer -->

        <script src="https://kit.fontawesome.com/be015c5e68.js" crossorigin="anonymous"></script>
        
    </body>
</html>
