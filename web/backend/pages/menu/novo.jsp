<%-- 
    Document   : editar
    Created on : 20/06/2015, 21:42:54
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/backend/partials/header.jsp" %>

<div class="row padding-top">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Novo Item no Menu
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
                                <label>Filho de:</label>
                                <select class="form-control">
                                    <option>Princpal</option>
                                    <option>Menu 1</option>
                                    <option>Menu 2</option>
                                    <option>Menu 3</option>
                                </select>
                            </div>
							
							<div class="form-group">
                                <label>Link para Pagina:</label>
                                <select class="form-control">
                                    <option>Index</option>
                                    <option>Empresa</option>
                                    <option>EndereÃ§o</option>
                                    <option>Produtos</option>
                                </select>
                            </div>
							
							 <div class="form-group">
                                <label>Publicado: </label>
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

<%--  FOOTER --%>
<%@include file="/backend/partials/footer.jsp" %>