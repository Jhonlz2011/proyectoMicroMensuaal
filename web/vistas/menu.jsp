<%-- 
    Document   : indexjsp
    Created on : 11-sep-2022, 15:16:55
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String strNomUsr=request.getParameter("parNomUsr");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
         <!-- normalize -->
    <link rel="preaload" href="css/normalize.css" as="style">
    <link rel="stylesheet" href="css/normalize.css">

    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- hoja de estilos -->
    <link rel="preaload" href="css/styles.css" as="style">
    <link rel="stylesheet" href="css/styles.css">

    <!-- datatable -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    </head>
   <body>
    <!-- header -->
    <div class="bg-header">
        <header class="container header">
             <b>Nombre de usuario:</b> <%=strNomUsr%>
            <img src="img/logo.png" alt="">
            <button class="btn--regresar">Salir</button>
        </header>
    </div>
    <!-- fin de header -->

    <main class="container menuPrincipal">
        <div class="menuPrincipal__grid">
            <!-- inicio del card -->
            <div id="card_consMensual" class="card">
                <img src="img/profesor.jpg" class="card-img" alt="...">
                <div class="card-body">
                    <h5 class="card_titulo">Consolidado Mensual</h5>
                </div>
            </div>
            <!-- fin del card -->
            <!-- inicio del card -->
            <div id="card__asgMateria" class="card">
                <img src="img/profesor.jpg" class="card-img" alt="...">
                <div class="card-body">
                    <h5 class="card_titulo">Asignar Materia</h5>
                </div>
            </div>
            <!-- fin del card -->
            <!-- inicio del card -->
            <div id="card__micro" class="card">
                <img src="img/profesor.jpg" class="card-img" alt="...">
                <div class="card-body">
                    <h5 class="card_titulo">Consulta Micro</h5>
                </div>
            </div>
            <!-- fin del card -->
            <!-- inicio del card -->
            <div id="card__aprobacion" class="card">
                <img src="img/profesor.jpg" class="card-img" alt="...">
                <div class="card-body">
                    <h5 class="card_titulo">Aprobacion de Micros</h5>
                    <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p> -->
                </div>
            </div>
            <!-- fin del card -->

    </main>

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

    <!-- scripts -->
    <script src="scripts/jquery-3.6.0.js"></script>
    <script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous">
    </script>

    <!-- script para el cambio de ventana -->
    <script>
        microCard = document.querySelector("#card__micro");
        asgMateria = document.querySelector("#card__asgMateria");
        card_consMensual =  document.querySelector("#card_consMensual");
        card__aprobacion =  document.querySelector("#card__aprobacion");
        btn__regresar = document.querySelector(".btn--regresar");

        btn__regresar.addEventListener("click", function(){
            window.location.href = "index.jsp";
        });

        microCard.addEventListener("click", function(){
            window.location.href = "micros.html";
        });

        asgMateria.addEventListener("click", function(){
            window.location.href = "asignacionMateria.html";
        });

        card_consMensual.addEventListener("click", function(){
            window.location.href = "consolidadoMensual.html";
        });

        card__aprobacion.addEventListener("click", function(){
            window.location.href = "aprobacionMicros.html";
        });
    </script>
    <!-- fin de scripts -->
</body>
</html>
