<%-- 
    Document   : editar
    Created on : 20/06/2015, 21:42:54
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/backend/partials/header.jsp" %>

<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Novo Post</h2>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                FormulÃ¡rio de PublicaÃ§Ã£o
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <form role="form">
                            <div class="form-group">
                                <label>TÃ­tulo</label>
                                <input class="form-control" name="titulo">
                            </div>
                            <div class="form-group">
                                <label>Categoria</label>
                                <select class="form-control">
                                    <option>NotÃ­cias</option>
                                    <option>Artigos</option>
                                    <option>Resenhas</option>
                                    <option>Diversos</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Imagen de Capa</label>
                                <input type="file" name="img">
                            </div>
                            <div class="form-group">
                                <label>ConteÃºdo</label>
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
                                           value="0">NÃ£o
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