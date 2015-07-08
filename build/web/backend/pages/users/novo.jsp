<%-- 
    Document   : editar
    Created on : 20/06/2015, 21:42:54
    Author     : HT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/backend/partials/header.jsp" %>

<div class="row margin-top">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Novo Administrador
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <form role="form" method="POST">
                            <div class="form-group">
                                <label>Nome</label>
                                <input type="text" class="form-control" name="nome">
                            </div>
							<div class="form-group">
                                <label>E-Mail</label>
                                <input type="text" class="form-control" name="email">
                            </div>
							<div class="form-group">
                                <label>Senha</label>
                                <input type="password" class="form-control" name="senha">
                            </div>
							<div class="form-group">
                                <label>Confirmar Senha</label>
                                <input type="password" class="form-control" name="senha_confirma">
                            </div>

                            <div class="form-group">
                                <label>Ativo: </label>
                                <label class="radio-inline">
                                    <input name="ativo" type="radio" name="publicado" id="optionsRadiosInline1"
                                           value="1" checked>Sim
                                </label>
                                <label class="radio-inline">
                                    <input name="ativo" type="radio" name="publicado" id="optionsRadiosInline2"
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