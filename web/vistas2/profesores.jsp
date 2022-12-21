<%-- 
    Document   : profesores
    Created on : 22-sep-2022, 13:15:55
    Author     : user
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Profesores</title>


        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/67b7b97383.js" crossorigin="anonymous"></script>
        <!-- Theme style -->
        <link rel="stylesheet" href="vistas2/assets/dist/css/adminlte.min.css">
        <!-- SweetAlert -->
        <link href="vistas2/assets/plugins/swetalert/sweetalert.css" rel="stylesheet" type="text/css"/>

        <!-- Toastr -->
        <!--  <link rel="stylesheet" href="vistas3/assets/plugins/toastr/toastr.min.css"> -->

        <!-- DataTables -->
        <link href="vistas2/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
        <link href="vistas2/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
        <link href="vistas2/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
        <!--DataTable estilo-->
        <link href="vistas2/assets/dist/css/estilos.css" rel="stylesheet" type="text/css"/>

    </head>
    <body class="hold-transition sidebar-mini ">
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
                        <a class="nav-link"  href="index.jsp" role="button" >
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
                <a href="asignacionControlador?accion=listar" class="brand-link">
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
                                <a href="asignacionControlador?accion=listar" class="nav-link">

                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Inicio
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item menu-open">
                                <a href="#" class="nav-link active">
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
                                        <a href="profesorControlador?accion=listar" class="nav-link active">
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
                                        <a href="reporteControlador?accion=listar" class="nav-link">
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
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Profesores</h1>
                                <button id="btnNuevo" type="button" class="btn btn-success mt-3" data-toggle="modal" data-target="#modal-danger">
                                    <i class="fa fa-plus"></i> Nuevo profesor
                                </button> 
                            </div>         
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Registros</a></li>
                                    <li class="breadcrumb-item active">Profesores</li>
                                </ol> 
                            </div>
                        </div><!-- /.row -->

                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Listado de profesores</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table id="example1" class="selectorTabla table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>CEDULA</th>
                                                    <th>APELLIDOS</th> 
                                                    <th>NOMBRES</th>                                                 
                                                    <th>ACCIONES</th>
                                                </tr>
                                            </thead> 
                                            <c:forEach var="profesor" items="${Profesores}">
                                                <tr>
                                                    <td >${profesor.id_profesor}</td>
                                                    <td>${profesor.cedula}</td>
                                                    <td>${profesor.apellidos_profesor}</td>
                                                    <td>${profesor.nombres_profesor}</td>
                                                    <!-- <td></td>    -->
                                                    <td class="text-center">

                                                        <button type="button" class="btn btn-warning button__editar--b" data-toggle="modal" data-target="#modal-danger1" title="Editar" data-original-title="Editar">
                                                            <i class="fa-solid fa-pencil"></i></button>
                                                        <!-- <a><button type="button" class="btn btn-danger" data-toggle="tooltip"  title="Eliminar" data-original-title="Eliminar"> -->

                                                        <!-- ELIMINAR PROFESORES -->
                                                        <input type="hidden" id="id_profesor" value="${profesor.id_profesor}">
                                                        <a id="deleteProfe" href="<c:url value="profesorControlador">
                                                               <c:param name="accion" value="eliminarProfesor" />
                                                               <c:param name="id_profesor" value="${profesor.id_profesor}" />
                                                           </c:url>"><button type="button" class="btn btn-danger" data-toggle="tooltip"  title="Eliminar" data-original-title="Eliminar">
                                                                <i class="fa fa-trash"></i></button></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
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
            <!-- /.content-wrapper -->
            <!-- /.modal -->

            <div class="modal fade" id="modal-danger">
                <div class="modal-dialog">
                    <div class="modal-content modal-nuevo" >
                        <div class="modal-header header-color-nuevo">
                            <h4 class="modal-title title-nuevo">Nuevo Profesor</h4>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="formNuevo" autocomplete="off">  
                                <div class="form-row-nuevo">

                                    <div class="input-data">
                                        <input  class="input-nuevo" type="text" name="txtCedula" required>
                                        <div class="underline"></div>
                                        <label>Cedula</label>
                                    </div>

                                    <div class="input-data">
                                        <input class="input-nuevo" type="text" name="txtNombres" required>
                                        <div class="underline"></div>
                                        <label>Nombres</label>
                                    </div>  
                                    <div class="input-data">
                                        <input  class="input-nuevo" type="text" name="txtApellidos" required>
                                        <div class="underline"></div>
                                        <label>Apellidos</label>
                                    </div>        
                                </div>
                                <br>
                                <div class="justify-content-between">
                                    <button type="button" class="btn btn-dark" data-dismiss="modal"><i class="fa-solid fa-right-from-bracket"></i>  Cerrar</button>
                                    <button type="submit" class="btn btn-success" value="Agregar" name="accion"><i class="fa-solid fa-user-plus"></i></i>  Agregar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- /.modal -->

            <!--Editar profesor-->
            <div class="modal fade" id="modal-danger1">
                <div class="modal-dialog">
                    <div class="modal-content bg-warning" >
                        <div class="modal-header">
                            <h4 class="modal-title">Editar Profesor</h4>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body editar">
                            <form  autocomplete="off" action="profesorControlador" method="POST">   
                                <input id="edit-Id" class="form-control" type="text" name="txtid" style="
                                       border-color: black !important; display: none !important">
                                <div class="form-row-editar">
                                    <div class="input-data-edit">
                                        <input id="edit-cedula" class="input-editar" type="text" name="txtCedula" required>  
                                        <div class="underline-e"></div>                             
                                        <label>Cedula</label>
                                    </div>
                                    <div class="input-data-edit">  
                                        <input id="edit-nombre" class="input-editar" type="text" name="txtNombre" required>
                                        <div class="underline-e"></div>                             
                                        <label>Nombres</label>
                                    </div>
                                    <div class="input-data-edit">
                                        <input id="edit-apellido" class="input-editar" type="text" name="txtApellido" required>
                                        <div class="underline-e"></div>                             
                                        <label>Apellidos</label>
                                    </div>
                                </div><br>
                                <div class="justify-content-between">
                                    <button type="button" class="btn btn-white" data-dismiss="modal" ><i class="fa-solid fa-right-from-bracket"></i>  Cerrar</button>
                                    <button type="submit" class="btn btn-warning" value="Actualizar" name="accion"><i class="fa-solid fa-pen-to-square"></i>  Actualizar</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
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

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="vistas2/assets/plugins/jquery/jquery.min.js"></script>
    <script src="vistas2/assets/plugins/popper/popper.min.js" type="text/javascript"></script>
    <!-- Bootstrap 4 -->
    
    <script src="vistas2/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="vistas2/assets/dist/js/adminlte.min.js"></script>
    <!-- DataTables  & Plugins -->
    <script src="vistas2/assets/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="vistas2/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script src="vistas2/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>
    <script src="vistas2/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js" type="text/javascript"></script>
    <!-- <script src="vistas2/dist/scripts/dataTable.js" type="text/javascript"></script> -->
    <!-- SweetAlert -->
    <script src="vistas2/assets/plugins/swetalert/sweetalert.js" type="text/javascript"></script>

    <script>      
        document.addEventListener("DOMContentLoaded", eventoTabla);

        function eventoTabla() {
            const tabla = document.querySelector(".selectorTabla");

            tabla.addEventListener("click", function guardarId(e) {
                e.preventDefault();

                const seleccion = e.target;
                const editarNombre = document.querySelector("#edit-nombre");
                const editarApellido = document.querySelector("#edit-apellido");
                const editarCedula = document.querySelector("#edit-cedula");
                const inputId = document.querySelector("#edit-Id");

                //Si es que el click selecciono el boton
                if (seleccion.classList.contains("button__editar--b")) {
                    const fila = seleccion.parentElement.parentElement;
                    const id = fila.children[0].textContent;
                    const nombre = fila.children[3].textContent;
                    const apellido = fila.children[2].textContent;
                    const cedula = fila.children[1].textContent;

                    editarNombre.value = nombre;
                    editarApellido.value = apellido;
                    inputId.value = id;
                    editarCedula.value = cedula;

                } else if (seleccion.classList.contains("fa-pencil")) {
                    const fila = seleccion.parentElement.parentElement.parentElement;
                    const id = fila.children[0].textContent;
                    const nombre = fila.children[3].textContent;
                    const apellido = fila.children[2].textContent;
                    const cedula = fila.children[1].textContent;

                    editarNombre.value = nombre;
                    editarApellido.value = apellido;
                    editarCedula.value = cedula;
                    inputId.value = id;
                }
            });
        }
        $(document).ready(function () {
            $("tr #deleteProfe").click(function (e) {
                e.preventDefault();
                var id_profesor = $(this).parent().find('#id_profesor').val();
                swal({
                    title: "Esta Seguro de Eliminar?",
                    text: "Una vez eliminado no podra recuperarlo!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "Sí, Eliminar!",
                    cancelButtonText: "No, Cancelar!",
                    closeOnConfirm: false,
                    closeOnCancel: true
                },
                        function (isConfirm) {
                            if (isConfirm) {
                                eliminarProfesor(id_profesor);
                                swal("Eliminado!", "El profesor se ha eliminado con exito", "success");
                                setTimeout(function () {
                                parent.location.href = "profesorControlador?accion=listar";
                                }, 1700);
                            }
                        });
            });

            function eliminarProfesor(id_profesor) {
                var url = "profesorControlador?accion=eliminarProfesor&id_profesor=" + id_profesor;
               
                $.ajax({
                    type: 'POST',
                    url: url,
                    async: true,
                    success: function (r) {
                    
                    }
                });
            }
        }
        );
        $(function () {
            tabla = $("#example1").DataTable({

                "responsive": true, "lengthChange": false, "autoWidth": false,
                "language": {"url": "https://cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json"}

            });
        });

        $(document).on("click", "#btnNuevo", function () {
            $("#formNuevo").trigger("reset");
        });

       

    </script>


</body>
</html>
