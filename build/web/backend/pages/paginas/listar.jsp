<%-- 
    Document   : index
    Created on : 17/05/2015, 13:39:47
    Author     : Jean
--%>

<%@page import="java.lang.reflect.Field"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/backend/partials/header.jsp" %>


<div class="row margin-top">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Listagem de Paginas
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body table-responsive">
                <table class="table table-striped" id="dtTables">
                    <thead>
                        <tr>
                            <th>#ID</th>
                            <th>Título</th>
                            <th>Ações:</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.pages}" var="page">
                            <tr>
                                <td>${page.id}</td>
                                <td>${page.titulo}</td>
                                <td>${page.autor}</td>
                                <td>
                                    <a href="<c:out value="${url}"/>/admin/artigo/editar?id=${page.id}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i></a>
                                    <a href="<c:out value="${url}"/>/admin/artigo/deletar?id=${page.id}" class="btn btn-xs btn-danger delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
</div>
<!-- /.row -->

<!-- jQuery Confirm -->
<script src="<c:out value="${url}"/>public/js/jquery.confirm.min"></script>

<!-- Datatables CSS -->
<link href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<link href="//cdn.datatables.net/responsive/1.0.6/css/dataTables.responsive.css" rel="stylesheet">
<script src="//cdn.datatables.net/responsive/1.0.6/js/dataTables.responsive.min.js"></script>

<!-- DataTables JavaScript -->
<script>
    $(document).ready(function () {
        $('#dtTables').DataTable({
            "language": {
                "url": "//cdn.datatables.net/plug-ins/1.10.7/i18n/Portuguese-Brasil.json"
            }
        });
    });


    $(".delete").confirm({
        text: "Tem certeza que deseja deletar este artigo?",
        title: "Confirmação necessária",
        confirm: function (button) {
            window.location.href = button[0].href;
        },
        cancel: function (button) {
            // nothing to do
        },
        confirmButton: "Confirmar",
        cancelButton: "Cancelar",
        post: true,
        confirmButtonClass: "btn-danger",
        cancelButtonClass: "btn-default",
        dialogClass: "modal-dialog modal-md" // Bootstrap classes for large modal
    });
</script>


<%--  FOOTER --%>
<%@include file="/backend/partials/footer.jsp" %>