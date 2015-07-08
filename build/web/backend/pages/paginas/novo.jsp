<%-- 
    Document   : novo
    Created on : 20/06/2015, 21:43:19
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--  HEADER --%>
<%@include file="/backend/partials/header.jsp" %>

<div class="row margin-top">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Nova Pagina
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <form role="form">
                            <div class="form-group">
                                <label>Título da Página</label>
                                <input class="form-control" name="titulo">
                            </div>
                            <div class="form-group">
                                <label>Conteúdo</label>
                                <textarea class="editor" id="editor"
                                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
                                          name="conteudo"></textarea>
                            </div>

                            <div class="form-group">
                                <label>Publicado</label>
                                <label class="radio-inline">
                                    <input type="radio" name="publicado" id="optionsRadiosInline1"
                                           value="1" checked>Sim
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="publicado" id="optionsRadiosInline2"
                                           value="0">Não
                                </label>
                            </div>

                            <button type="submit" class="btn btn-primary">Enviar</button>
                            <button type="button" onclick="history.back()" class="btn btn-warning">Voltar</button>
                        </form>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->


<!-- ckEditor -->
<script src="//cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>
<script type="text/javascript">
    $(function () {
        CKEDITOR.replace('editor');
    });
</script>

<%--  FOOTER --%>
<%@include file="/backend/partials/footer.jsp" %>
