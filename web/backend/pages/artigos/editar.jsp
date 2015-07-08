<%-- 
    Document   : editar artigo
    Created on : 17/05/2015, 13:39:47
    Author     : Jean
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="artigo" scope="session" value="${artigo}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/backend/partials/header.jsp" %>

            <div class="row" style="margin: 5px">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Listagem de Artigos
                        </div>
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body table-responsive">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                    <form method="POST">
                                        <div class="form-group">
                                            <label>Título</label>
                                            <input class="form-control" name="titulo" value="<c:out value="${artigo.titulo}"/>">
                                        </div>
                                        <div class="form-group">
                                            <label>Categoria</label>
                                            <select name="categoria" class="form-control">
                                                <option value="Notícias" <c:if test="${artigo.categoria == 'Notícias'}">selected</c:if>>Notícias</option>
                                                <option value="Artigos" <c:if test="${artigo.categoria == 'Artigos'}">selected</c:if>>Artigos</option>
                                                <option value="Resenhas" <c:if test="${artigo.categoria == 'Resenhas'}">selected</c:if>>Resenhas</option>
                                                <option value="Diversos" <c:if test="${artigo.categoria == 'Diversos'}">selected</c:if>>Diversos</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Conteúdo</label>
                                            <textarea class="editor" id="editor"
                                                      style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
                                                      name="conteudo"><c:out value="${artigo.conteudo}"/></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label>Autor</label>
                                            <input class="form-control" name="autor" value="<c:out value="${artigo.autor}"/>">
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

        </div>
        
        <!-- ckEditor -->
        <script src="//cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>
        <script type="text/javascript">
                $(function () {
                    CKEDITOR.replace('editor');
                });
        </script>


<%--  FOOTER --%>
<%@include file="/backend/partials/footer.jsp" %>