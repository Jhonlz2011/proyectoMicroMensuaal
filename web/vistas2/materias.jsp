<%-- 
    Document   : materias
    Created on : 25-sep-2022, 4:19:16
    Author     : user
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        
    </head>
    <body>
        <jsp:include page="modulos/header.jsp" />
        <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Materias</h1>
                            </div>                           
                        </div><!-- /.row -->
                        <button id="btnNuevo" type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-danger">
                            <i class="fa fa-plus"></i> Nueva Materia
                        </button>

                        </a>
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
                                        <h3 class="card-title">Listado de materias</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table id="example1" class="selectorTabla table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>CODIGO</th>
                                                    <th>MATERIA</th>                                               
                                                    <th class="text-center">ACCIONES</th>
                                                </tr>
                                            </thead> 
                                            <c:forEach var="materia" items="${Materias}">
                                                <tr>
                                                    <td >${materia.id_materia}</td>
                                                    <td>${materia.codigo_materia}</td>
                                                    <td>${materia.nombre_materia}</td>
                                                    <td class="text-center">
                                                        <button type="button" class="btn btn-warning button__editar--b" data-toggle="modal" data-target="#modal-danger1" title="Editar" data-original-title="Editar">
                                                                <i class="fa-solid fa-pencil"></i></button>
                                                        <!-- <a><button type="button" class="btn btn-danger" data-toggle="tooltip"  title="Eliminar" data-original-title="Eliminar"> -->

                                                        <!-- ELIMINAR MATERIAS -->
                                                        <input type="hidden" id="id_materia" value="${materia.id_materia}">
                                                        <a id="deleteMate" href="<c:url value="materiaControlador" >
                                                               <c:param name="accion" value="eliminarMateria" />
                                                               <c:param name="id_materia" value="${materia.id_materia}" />
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
                    <div class="modal-content modal-nuevo">
                        <div class="modal-header header-color-nuevo">
                            <h4 class="modal-title title-nuevo">Nueva Materia</h4>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="formNuevo" autocomplete="off" action="materiaControlador" method="POST">                   
                                <div class="form-row-nuevo">
                                    <div class="input-data">
                                        <input class="input-nuevo" type="text" name="txtCodigo" required>
                                        <div class="underline"></div>
                                        <label>Codigo</label>
                                    </div>  
                                    <div class="input-data">
                                        <input class="input-nuevo" type="text" name="txtNombres" required>
                                        <div class="underline"></div>
                                        <label>Nombre de la carrera</label>
                                    </div>          
                                </div>                              
                                <div class="justify-content-between">
                                    <button type="button" class="btn btn-dark" data-dismiss="modal"><i class="fa-solid fa-right-from-bracket"></i> Cerrar</button>
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

            <!--Editar Materia-->
            <div class="modal fade" id="modal-danger1">
                <div class="modal-dialog">
                    <div class="modal-content bg-warning">
                        <div class="modal-header">
                            <h4 class="modal-title">Editar Materia</h4>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body editar">
                            <form  autocomplete="off" action="materiaControlador" method="POST">   
                                <input  id="edit-Id" class="form-control" type="text" name="txtid" style="
                                       border-color: black !important; display: none !important">
                                <div class="form-row-editar">
                                    <div class="input-data-edit">
                                         <input id="edit-codigo" class="input-editar" type="text" name="txtCodigo" required>  
                                        <div class="underline-e"></div>                             
                                        <label>Codigo</label>
                                    </div>
                                    <div class="input-data-edit">  
                                        <input id="edit-nombre" class="input-editar" type="text" name="txtNombre" required>
                                        <div class="underline-e"></div>                             
                                        <label>Nombre de la materia</label>
                                    </div>
                                    
                                    
                                </div>   
                                <div class="justify-content-between">
                                     <button type="button" class="btn btn-white" data-dismiss="modal" ><i class="fa-solid fa-right-from-bracket"></i>  Cerrar</button>
                                     <button type="submit" class="btn btn-warning" value="Actualizar" name="accion"><i class="fa-solid fa-pen-to-square"></i>  Actualizar</button>
                                </div>
                            </form>
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
    </body>
</html>
