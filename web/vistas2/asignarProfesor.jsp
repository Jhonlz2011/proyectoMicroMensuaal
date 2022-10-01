<%-- 
    Document   : prueba
    Created on : 26-sep-2022, 23:50:32
    Author     : user
--%>

<%@page import="entidades.Periodo"%>
<%@page import="entidades.Temporada"%>
<%@page import="entidades.Horario"%>
<%@page import="entidades.Materia"%>
<%@page import="entidades.Profesor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Asignar Profesor</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <script src="https://kit.fontawesome.com/67b7b97383.js" crossorigin="anonymous"></script>
        <!-- daterange picker -->
        <link rel="stylesheet" href="vistas2/assets/plugins/daterangepicker/daterangepicker.css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link rel="stylesheet" href="vistas2/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- Bootstrap Color Picker -->
        <link rel="stylesheet" href="vistas2/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="stylesheet" href="vistas2/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="vistas2/assets/plugins/select2/css/select2.min.css">
        <link rel="stylesheet" href="vistas2/assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
        <!-- Bootstrap4 Duallistbox -->
        <link rel="stylesheet" href="vistas2/assets/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
        <!-- BS Stepper -->
        <link rel="stylesheet" href="vistas2/assets/plugins/bs-stepper/css/bs-stepper.min.css">
        <!-- dropzonejs -->
        <link rel="stylesheet" href="vistas2/assets/plugins/dropzone/min/dropzone.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="vistas2/assets/dist/css/adminlte.min.css">

        <link href="vistas2/assets/dist/css/estilos.css" rel="stylesheet" type="text/css"/> 
    </head>
    <body class="hold-transition sidebar-mini">
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
                <a href="" class="brand-link">
                    <img src="vistas2/assets/dist/img/logoTES4 .png" alt=""class="brand-image"/>
                    <span class="brand-text font-weight-light">Tecnológico Espíritu Santo</span><br>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="info" >
                            <p style=" margin-top:revert; color: white;text-align: center;font-size: 18px;font-weight: 600; font-family: system-ui;" >
                                Bienvenido, Administrador </p>

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
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                                 with font-awesome or any other icon font library -->
                            <li class="nav-item">
                                <a href="vistas2/menuPrincipal.jsp" class="nav-link active">

                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Inicio
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-edit"></i>
                                    <p>
                                        Registros
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="carreraControlador?accion=listar" class="nav-link">
                                            <i class="fa-solid fa-graduation-cap nav-icon"></i>
                                            <p>Carreras</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="materiaControlador?accion=listar" class="nav-link">
                                            <i class="fa fa-book nav-icon"></i>
                                            <p>Materias</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="profesorControlador?accion=listar" class="nav-link">
                                            <i class="fa-solid fa-person-chalkboard nav-icon"></i>
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
                                        <a href="vistas2/informe.jsp" class="nav-link">
                                            <i class="fa-solid fa-chart-column nav-icon"></i>
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
                                <h1>Asignar profesor</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                                    <li class="breadcrumb-item active">Asignar profesor</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <!-- SELECT2 EXAMPLE -->
                        <div class="card card-default">
                            <form action="asignacionControlador" method="post">
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Profesor</label>
                                                <select id="cboProfesor" class="form-control select2 select2-danger" data-dropdown-css-class="select2-danger" data-placeholder="Selecciona un profesor" style="width: 100%;">
                                                    <% List<Profesor> listaProfesor = (List<Profesor>) request.getAttribute("Profesores");
                                                        if (listaProfesor != null)//ESTO TMBN ES IMPORTANTE 
                                                            for (Profesor profesor : listaProfesor) {%>
                                                    <option value="<%=profesor.getId_profesor()%>"><%=profesor.getNombres_profesor()%> <%=profesor.getApellidos_profesor()%></option>
                                                    <%}%>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->
                                            <div class="form-group">
                                                <label>Materia</label>
                                                <select id="cboMaterias" class="form-control select2 select2-danger" data-dropdown-css-class="select2-danger" style="width: 100%;">
                                                    <% List<Materia> listam = (List<Materia>) request.getAttribute("Materias");
                                                     if (listam != null)//ESTO TMBN ES IMPORTANTE 
                                                         for (Materia m : listam) {%>
                                                    <option value="<%=m.getId_materia()%>"><%=m.getNombre_materia()%></option>
                                                    <%}%>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->
                                            <div class="form-group">                                    
                                                <label>Horario</label>
                                                <select id="cboHorario" class="form-control select2 select2-danger" data-dropdown-css-class="select2-danger" data-placeholder="Selecciona una materia" style="width: 100%;">
                                                    <% List<Horario> listah = (List<Horario>) request.getAttribute("Horario");
                                                     if (listah != null)//ESTO TMBN ES IMPORTANTE 
                                                         for (Horario h : listah) {%>
                                                    <option value="<%=h.getId_horario()%>"><%=h.getHorario()%></option>
                                                    <%}%>                                     
                                                </select>                                          
                                            </div>

                                        </div>
                                        <!-- /.col -->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Semestre</label>
                                                <select id="cboPeriodo" class="form-control select2 select2-danger" data-dropdown-css-class="select2-danger" style="width: 100%;">
                                                    <% List<Periodo> lista = (List<Periodo>) request.getAttribute("Periodo");
                                                     if (lista != null)//ESTO TMBN ES IMPORTANTE 
                                                         for (Periodo p : lista) {%>
                                                    <option value="<%=p.getId_periodo()%>"><%=p.getSemestre_modulo()%></option>
                                                    <%}%>                            
                                                </select>
                                            </div>        
                                            <!-- /.form-group -->     
                                            <div class="form-group">
                                                <label>Año</label>
                                                <select id="cboTemp" class="form-control select2 select2-danger" data-dropdown-css-class="select2-danger" style="width: 100%;">
                                                    <% List<Temporada> listat = (List<Temporada>) request.getAttribute("Temporada");
                                                     if (listat != null)//ESTO TMBN ES IMPORTANTE 
                                                         for (Temporada t : listat) {%>
                                                    <option value="<%=t.getId_temp()%>"><%=t.getTemp()%></option>
                                                    <%}%> 
                                                </select>
                                            </div>

                                        </div>

                                        <!-- /.col -->
                                    </div>
                                    <!-- /.row -->

                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <input  class="btn btn-danger" type="submit" name="accion" value="asignar"> 
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.card -->
            </div>
            <!-- /.container-fluid -->
        </section>
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
<!-- ./wrapper -->

<!-- jQuery -->
<script src="vistas2/assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="vistas2/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="vistas2/assets/plugins/select2/js/select2.full.min.js"></script>   
<!-- AdminLTE App -->
<script src="vistas2/assets/dist/js/adminlte.min.js"></script>

<!-- Page specific script -->
<script>
    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2()

        //Initialize Select2 Elements
        $('.select2bs4').select2({
            theme: 'bootstrap4'
        })
    })



</script>
</body>
</html>
