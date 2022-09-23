<%-- 
    Document   : aprobacionMicros
    Created on : 22/09/2022, 20:27:49
    Author     : Kenne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prueba 1</title>

    <!-- normalize -->
    <link rel="preaload" href="../css/normalize.css" as="style">
    <link rel="stylesheet" href="../css/normalize.css">

    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- hoja de estilos -->
    <link rel="preaload" href="css/styles.css" as="style">
    <link rel="stylesheet" href="css/styles.css">

    <!-- bootstrap mod-->
    <link rel="preaload" href="css/bootstrap-mod.css" as="style">
    <link rel="stylesheet" href="css/bootstrap-mod.css">

    <link rel="stylesheet" href="sweetalert2.min.css">

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
            <label class="formDiv__label" for="">Docente:</label>
            <select class="formDiv__select" name="" id="">
                <option value="">-- Seleccione el Profesor --</option>
                <option value="1234">Eddy Lino</option>
                <option value="5678">Juan Marin</option>
                <option value="1245">Luis Tama</option>
                <option value="9854">Carlos Cabanilla</option>
                <option value="0123">Enrique Villalta</option>
            </select>
        </div>
        <button class="btn formButton">Buscar</button>
    </form>
    <!-- fin de formulario de seleccion de micros -->

    <!-- tabla de muestra de resultados -->
    <div class="container container--tabla">
        <div class="table">
            <table id="example" class="display">
                <thead>
                    <tr>
                        <th>Materia</th>
                        <th>Estado</th>
                        <th>Actualizar</th>
                    </tr>
                </thead>
                                <% 
                 Connection con;
                 ResultSet rs;
                 
                 Class.forName("org.postgresql.Driver");
                 con = DriverManager.getConnection("jdbc:postgresql://localhost:5433/dbproyectoweb", "postgres", "1234");
                 String query = "SELECT * FROM public.tblmaterias";
                 
                 Statement st = con.createStatement();
                 
                 
                 rs = st.executeQuery(query);
                 
                 
                 while(rs.next()){
                     
                     
                %>
               
                    <tr>
                        <td><%= rs.getString("nombre_materia")%></td>
                        <td>Entregado</td>
                        <td>
                            <a data-bs-toggle="modal" href="#exampleModalToggle" role="button">Actualizar</a>
                        </td>
                    </tr>
                  
                <%
                    }                   
                %>
            </table>
        </div>
    </div>
    <!-- fin de tabla de muestra de resultados -->

    <!-- footer -->
    <!-- <footer class="bg-footer">
        <div class="container">
            <a href="#">Terminos y condiciones</a>
            <span> | </span>
            <a href="#">Politicas de privacidad</a>
            <span> | </span>
            <a href="#">Contacto</a>
            <p>Copyright © 2012 - 2022 Instituto Superior Tecnologico Espiritu Santo </p>
        </div>
    </footer> -->
    <!-- fin de footer -->

    <!-- Modal/Ventana Emergente -->
    <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel">Actualización de Micro</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="modal-body__heading">
                        <div class="modal-body__heading--div">
                            <h2>Estado actual:</h2>
                            <p>Entregado</p>
                        </div>
                        <form action="" class="container modal--form">
                            <div class="formDiv">
                                <label class="formDiv__label" for="">Cambio:</label>
                                <select class="formDiv__select" name="" id="">
                                    <option value="">-- Seleccione el estado --</option>
                                    <option value="ene">Entregado</option>
                                    <option value="feb">En revision</option>
                                    <option value="mar">Pendiente</option>
                                </select>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" id="actualizacion">Actualilzar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- scripts -->
    <script src="scripts/jquery-3.6.0.js"></script>
    <script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="scripts/dataTable.js"></script>

    <!-- bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous">
        </script>

    <!-- sweetAlert -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        const btnactualizacion = document.querySelector("#actualizacion");

        btnactualizacion.addEventListener("click", function(){
            Swal.fire({
            title: 'Actualizacion Exitosa!',
            icon: 'success',
            confirmButtonText: 'Regresar'
        })
        });


    </script>

    <script>
        btn__regresar = document.querySelector(".btn--regresar");

        btn__regresar.addEventListener("click", function () {
            window.location.href = "menu.html";
        });
    </script>
    <!-- fin de scripts -->
</body>

</html>
