<%-- 
    Document   : novo artigo
    Created on : 17/05/2015, 13:39:47
    Author     : Jean
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/backend/partials/header.jsp" %>

            <div class="row margin-top">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Novo Artigo
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body table-responsive">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form method="POST">
                                        <div class="form-group">
                                            <label>Título</label>
                                            <input class="form-control" name="titulo">
                                        </div>
                                        <div class="form-group">
                                            <label>Categoria</label>
                                            <select name="categoria" class="form-control">
                                                <option value="Notícias">Notícias</option>
                                                <option value="Artigos">Artigos</option>
                                                <option value="Resenhas">Resenhas</option>
                                                <option value="Diversos">Diversos</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Conteúdo</label>
                                            <textarea class="editor" id="editor"
                                                      style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
                                                      name="conteudo"></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label>Autor</label>
                                            <input class="form-control" name="autor">
                                        </div>

                                        <button type="submit" class="btn btn-primary">Enviar</button>
                                        <button type="button" onclick="history.back()" class="btn btn-warning">Voltar</button>
                                    </form>
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
                                
        <!-- jQuery -->
        <script src="<c:out value="${url}"/>public/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="<c:out value="${url}"/>public/plugins/bootstrap/js/bootstrap.min.js"></script>
                                
        <!-- ckEditor -->
        <script src="<c:out value="${url}"/>public/plugins/ckeditor/ckeditor.js"></script>
        <script type="text/javascript">
                $(function () {
                    CKEDITOR.replace('editor');
                });
        </script>


<%--  FOOTER --%>
<%@include file="/backend/partials/footer.jsp" %>