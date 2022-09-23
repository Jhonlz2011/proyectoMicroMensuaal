<%-- 
    Document   : consolidadoMensual
    Created on : 22/09/2022, 14:02:36
    Author     : Stranger Max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@page import="java.sql.*" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prueba 1</title>

    <!-- normalize -->
    <link rel="preaload" href="css/normalize.css" as="style">
    <link rel="stylesheet" href="css/normalize.css">

    <!-- hoja de estilos -->
    <link rel="preaload" href="css/styles.css" as="style">
    <link rel="stylesheet" href="css/styles.css">

    <!-- datatable -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
</head>

<body class="body--tablas">
    <!-- header -->
    <div class="bg-header">
        <header class="container header">
            <a href="menu.html">
                <img src="img/logo.png" alt="">
            </a>
            <button class="btn--regresar">Regresar</button>
        </header>
    </div>
    <!-- fin de header -->

    <!-- formulario de seleccion de micros -->
    <form action="" class="container form">
        <div class="formDiv">
            <label class="formDiv__label" for="">Año:</label>
            <select class="formDiv__select" name="" id="">
                <option value="">-- Seleccione el Año --</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                <option value="2025">2025</option>
                <option value="2026">2026</option>
                <option value="2027">2027</option>
                <option value="2028">2028</option>
                <option value="2029">2029</option>
                <option value="2030">2030</option>
                <option value="2031">2031</option>
                <option value="2032">2032</option>
                <option value="2033">2033</option>
            </select>
        </div>
        <div class="formDiv">
            <label class="formDiv__label" for="">Mes:</label>
            <select class="formDiv__select" name="" id="">
                <option value="">-- Seleccione el Mes --</option>
                <option value="ene">Enero</option>
                <option value="feb">Febrero</option>
                <option value="mar">Marzo</option>
                <option value="abr">Abril</option>
                <option value="may">Mayo</option>
                <option value="jun">Junio</option>
                <option value="jul">Julio</option>
                <option value="ago">Agosto</option>
                <option value="sep">Septiembre</option>
                <option value="oct">Octubre</option>
                <option value="nov">Noviembre</option>
                <option value="dic">Diciembre</option>
            </select>
        </div>
        <div class="formDiv">
            <label class="formDiv__label" for="">Carrera:</label>
            <select class="formDiv__select" name="" id="">
                <option value="">-- Seleccione la Carrera --</option>
                <option value="114234">Desarrollo de Software</option>
                <option value="565778">Diseño Grafico</option>
                <option value="124865">etc</option>
                <option value="985864">etc</option>
                <option value="012243">etc</option>
            </select>
        </div>
        <button class="btn formButton">Buscar</button>
    </form>
    <!-- fin de formulario de seleccion de micros -->

    <h2 class="txt-center">Total de micros entregados: 2</h2>

    <!-- tabla de muestra de resultados -->
    <div class="container container--tabla">
        <div class="table">
            <table id="example" class="display">
                <thead>
                    <tr>
                        <th>Maestro</th>
                        <th>Materia</th>
                        <th>Micro</th>
                        <th>Fecha de entrega</th>
                    </tr>
                </thead>
                <% 
                 Connection con;
                 ResultSet rs;
                 
                 Class.forName("org.postgresql.Driver");
                 con = DriverManager.getConnection("jdbc:postgresql://localhost:5433/dbproyectoweb", "postgres", "1234");
                 String query = "SELECT * FROM public.tblprofesor INNER JOIN public.tblmaterias ON tblprofesor.id_profesor=tblmaterias.id_materia INNER JOIN public.tblmicro ON tblmaterias.id_materia=tblmicro.id_micro";
                 
                 Statement st = con.createStatement();
                 
                 
                 rs = st.executeQuery(query);
                 
                 
                 while(rs.next()){
                       
                %>
                    <tr>
                    <td><%= rs.getString("nombres_profesor")%>  <%=rs.getString("apellidos_profesor")%> </td> 
                    <td><%= rs.getString("nombre_materia")%> </td>
                    <td> <p> falta algo </p> </td>
                    <td><%= rs.getString("fecha_entrega")%> </td>
                    </tr>               
                <%
                    }                   
                %>
            </table>
                
        </div>
    </div>
    <!-- fin de tabla de muestra de resultados -->

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
    <script src="scripts/dataTable.js"></script>

    <script>
        btn__regresar = document.querySelector(".btn--regresar");

        btn__regresar.addEventListener("click", function(){
            window.location.href = "menu.html";
        });
    </script>
    <!-- fin de scripts -->
</body>

</html>
