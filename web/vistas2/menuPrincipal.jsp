<%-- 
    Document   : menubien
    Created on : 22-sep-2022, 1:59:50
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <%
            String usr = request.getParameter("usr");
        %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inicio</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="assets/plugins/fontawesome-free/css/all.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">

       
    </head>
    <body  class="hold-transition sidebar-mini ">
        <div class="wrapper">
            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light" style="background: linear-gradient(180deg, rgba(254, 72, 72, 1) 0%, rgba(168, 6, 6, 1) 100%);">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>

                </ul>

                <ul class="navbar-nav ml-auto">
                    <!-- Navbar Search -->
                    <li class="nav-item">
                        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                            <i class="fas fa-search"></i>
                        </a>
                        <div class="navbar-search-block">
                            <form class="form-inline">
                                <div class="input-group input-group-sm">
                                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                    <div class="input-group-append">
                                        <button class="btn btn-navbar" type="submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                        <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Messages Dropdown Menu -->

                    <!-- Notifications Dropdown Menu -->

                    <li class="nav-item">
                        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i class="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>  
                    <li class="nav-item">
                        <a class="nav-link"  href="" role="button" >
                            <i class="fas fa fa-power-off"></i>
                        </a>
                    </li>

                </ul>

                <!-- Right navbar links -->

            </nav>
            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="index3.html" class="brand-link">
                    <img src="assets/dist/img/logoTES4 .png" alt=""class="brand-image"/>
                    <span class="brand-text font-weight-light">Tecnologico Espiritu </span><br>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="info" >
                            <p style=" margin-top:revert; color: white;text-align: center;font-size: 18px;font-weight: 600; font-family: system-ui;" >
                                Bienvenido, <%=usr%> </p>

                        </div>
                    </div>

                    <!-- SidebarSearch Form -->
                    <div class="form-inline">
                        <div class="input-group" data-widget="sidebar-search">
                            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-sidebar">
                                    <i class="fas fa-search fa-fw"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                                 with font-awesome or any other icon font library -->
                            <li class="nav-item">
                                <a href="#" class="nav-link active">

                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Inicio
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-edit "></i>
                                    <p>
                                        Registros
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="far fa fa-graduation-cap nav-icon"></i>
                                            <p>Carreras</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="fa fa-book nav-icon"></i>
                                            <p>Materias</p>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="../profesorControlador" class="nav-link">
                                            <i class="far fa fa-users nav-icon"></i>
                                  
                                            <p>Profesores</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <a href="" class="nav-link">
                                    <i class="nav-icon fas fa-chart-pie"></i>
                                    <p>
                                        Reportes
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class=" nav-icon fas fa-copy"></i>
                                            <p>Consolidado mensual</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Inicio</h1>
                            </div>
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <div class="content">
                       <form action="" class="container form">
        <div class="formDiv">
            <label class="formDiv__label" for="">Semestre:</label>
            <select class="formDiv__select" name="" id="">
                <option value="">-- Seleccione el Semestre --</option>
                <option value="1">Primer Semestre</option>
                <option value="2">Segundo Semestre</option>
                <option value="3">Invierno</option>
            </select>
        </div>

        <div class="formDiv">
            <label class="formDiv__label" for="">Modulo:</label>
            <select class="formDiv__select" name="" id="">
                <option value="">-- Seleccione el Modulo --</option>
                <option value="1">1</option>
                <option value="2">2</option>
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
    <!-- fin del form -->

    <!-- inicio de la tabla -->
    <div  class="container table">
        <table id="example" class="display">
            <thead>
                <tr>
                    <th>Materia</th>
                    <th>Turno</th>
                    <th>Descripcion</th>
                    <th>Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Big Data</td>
                    <td>A</td>
                    <td>Lunes: 18:15 a 22:15 / Viernes: 18:15 - 20:15</td>
                    <td>
                        <input type="checkbox" value="151515">
                    </td>
                </tr>
                <tr>
                    <td>Big Data</td>
                    <td>B</td>
                    <td>Martes, Miercoles y Jueves 18:15 - 20:15</td>
                    <td>
                        <input type="checkbox" value="151515">
                    </td>
                </tr>
                <tr>
                    <td>Big Data</td>
                    <td>C</td>
                    <td>Martes, Miercoles y Jueves 20:15 - 22:15</td>
                    <td>
                        <input type="checkbox" value="151515">
                    </td>
                </tr>
                <tr>
                    <td>Programacion Web</td>
                    <td>C</td>
                    <td>Martes, Miercoles y Jueves 20:15 - 22:15</td>
                    <td>
                        <input type="checkbox" value="151515">
                    </td>
                </tr>
                <tr>
                    <td>Fundamentos de programacion</td>
                    <td>B</td>
                    <td>Martes, Miercoles y Jueves 18:15 - 20:15</td>
                    <td>
                        <input type="checkbox" value="151515">
                    </td>
                </tr>
                <tr>
                    <td>Desarrollo Movil 2</td>
                    <td>A</td>
                    <td>Lunes: 18:15 a 22:15 / Viernes: 18:15 - 20:15</td>
                    <td>
                        <input type="checkbox" value="151515">
                    </td>
                </tr>
                <tr>
                    <td>Diseño e interactividad de paginas web</td>
                    <td>A</td>
                    <td>Lunes: 18:15 a 22:15 / Viernes: 18:15 - 20:15</td>
                    <td>
                        <input type="checkbox" value="151515">
                    </td>
                </tr>
            </tbody>

        </table> <!-- /.container-fluid -->
                </div>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->


            <!-- Main Footer -->
            <footer class="main-footer">
                <!-- To the right -->
                <div class="float-right d-none d-sm-inline">
                    <a href="#">Terminos y condiciones</a>
                    <span> | </span>
                    <a href="#">Politicas de privacidad</a>
                    <span> | </span>

                </div>
                <!-- Default to the left -->
                <strong>Copyright © 2012 - 2022 Tecnológico Espíritu Santo</a>.</strong> Todos los derechos reservados
            </footer>
            
        </div>
        
         <!-- REQUIRED SCRIPTS -->

        <!-- jQuery -->
        <script src="assets/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="assets/dist/js/adminlte.min.js"></script>
        
    <script src="scripts/jquery-3.6.0.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    <script src="scripts/dataTable.js"></script>
        
    </body>
</html>
