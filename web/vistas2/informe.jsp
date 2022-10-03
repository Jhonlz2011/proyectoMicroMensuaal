<%-- 
    Document   : consolidadoMensual
    Created on : 27-sep-2022, 17:07:45
    Author     : user
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informe</title>



        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
         <script src="https://kit.fontawesome.com/67b7b97383.js" crossorigin="anonymous"></script>
        <!-- DataTables -->
        <link rel="stylesheet" href="vistas2/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="vistas2/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
        <link rel="stylesheet" href="vistas2/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="vistas2/assets/dist/css/adminlte.min.css">
        <!--DataTable estilo-->
        <link href="vistas2/assets/dist/css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body  class="hold-transition sidebar-mini ">
        <div class="wrapper">
            <!-- Navbar -->
            <nav  class="main-header navbar navbar-expand navbar-white navbar-light" style="background: linear-gradient(180deg, rgba(254, 72, 72, 1) 0%, rgba(168, 6, 6, 1) 100%);">
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
                                    <input class="form-control form-control-navbar" type="search" placeholder="Buscar" aria-label="Search">
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
                <a href="menuPrincipal.jsp" class="brand-link">
                    <img src="vistas2/assets/dist/img/logoTES4 .png" alt=""class="brand-image"/>
                    <span class="brand-text font-weight-light">Tecnológico Espíritu Santo</span><br>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="info" >
                            <p style=" margin-top:revert; color: white;text-align: center;font-size: 18px;font-weight: 600; font-family: system-ui;" >
                                Bienvenido, Administrador</p>

                        </div>
                    </div>

                    <!-- SidebarSearch Form -->
                    <div class="form-inline">
                        <div class="input-group" data-widget="sidebar-search">
                            <input class="form-control form-control-sidebar" type="search" placeholder="Buscar" aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-sidebar">
                                    <i class="fas fa-search fa-fw"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul id= "nav" class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                                 with font-awesome or any other icon font library -->
                            <li class="nav-item">
                                <a href="asignacionControlador?accion=listar" class="nav-link">

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
                                        <a href="../carreraControlador?accion=listar" class="nav-link">
                                            <i class="fa-solid fa-graduation-cap nav-icon"></i>
                                            <p>Carreras</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../materiaControlador?accion=listar" class="nav-link ">
                                            <i class="fa fa-book nav-icon"></i>
                                            <p>Materias</p>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="../profesorControlador?accion=listar" class="nav-link">
                                            <i class="fa-solid fa-person-chalkboard nav-icon"></i>
                                            <p>Profesores</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item menu-open">
                                <a href="" class="nav-link active">
                                    <i class="nav-icon fas fa-chart-pie"></i>
                                    <p>
                                        Reportes
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="informe.jsp" class="nav-link active">
                                            <i class=" nav-icon fa-solid fa-chart-column"></i>
                                            <p>Informe</p>
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
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Informe</h1>
                 
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Reportes</a></li>
                                    <li class="breadcrumb-item active">Informe</li>
                                </ol> 


                            </div>


                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Listado de micros</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table id="example1" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Informe</th>
                                                    <th>Materia</th>
                                                    <th>Profesor</th>
                                                    <th>Periodo</th>
                                                    <th>Horario</th>
                                                    <th>Micro</th> 
                                                    <th>Fecha de entrega</th> 

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach varStatus="iteracion" var="a" items="${asignaciones}">
                                                    
                                                    <tr>
                                                        <td >${iteracion.index+1}</td>
                                                        <td>${a.materia.nombre_materia}</td>
                                                        <td>${a.profesor.nombres_profesor}</td>
                                                        <td>${a.periodo.semestre_modulo}</td>
                                                        <td>${a.horario.horario}</td>
                                                        <td class="text-center" ><span class="badge badge-success">Aprobado</span></td> 
                                                        <td>01/01/2001</td>
                                                    </tr>
                                                </c:forEach>
                                                <!--
                                                <tr>
                                                    <td>1</td>
                                                    <td>Programacion con Base de datos</td>
                                                    <td>Eddye Lino</td>
                                                    <td>Semestre I Modulo I</td>
                                                    <td>A</td>
                                                    <td><span class="badge badge-success">Aprobado</span></td>
                                                    <td>27/09/2022</td>
                                                </tr>
                                                -->
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </section>
                <!-- /.content -->
            </div>
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
        <script src="vistas2/assets/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="vistas2/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- DataTables  & Plugins -->
        <script src="vistas2/assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="vistas2/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="vistas2/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
        <script src="vistas2/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
        <script src="vistas2/assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
        <script src="vistas2/assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
        <script src="vistas2/assets/plugins/jszip/jszip.min.js"></script>
        <script src="vistas2/assets/plugins/pdfmake/pdfmake.min.js"></script>
        <script src="vistas2/assets/plugins/pdfmake/vfs_fonts.js"></script>
        <script src="vistas2/assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
        <script src="vistas2/assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
        <script src="vistas2/assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
        <!-- AdminLTE App -->
        <script src="vistas2/assets/dist/js/adminlte.min.js"></script>

        <!-- Page specific script -->
        <script>
            $(function () {
                $("#example1").DataTable({

                    "responsive": true, "lengthChange": false, "autoWidth": false,
                    "buttons": ["excel", "pdf", "print", "colvis"],
                    "language": {
                        "lengthMenu": "Mostrar _MENU_ registros",
                        "zeroRecords": "No se encontraron resultados",
                        "info": "Mostrando registros del _START_ al _END_ de _TOTAL_ registros",
                        "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sSearch": "Buscar:",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "sProcessing": "Procesando...",
                    }
                }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

            });
        </script>

    </body>
</html>
