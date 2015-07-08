<%-- 
    Document   : index
    Created on : 10/05/2015, 20:51:01
    Author     : Jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="partials/header.jsp" %>

<div class="row margin-top">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-success">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-edit fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <h3>10</h3>
                        <div>Posts</div>
                    </div>
                </div>
            </div>
            <a href="#/Admin/pages/posts/listar.html">
                <div class="panel-footer">
                    <span class="pull-left">Ver Todos</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-comments fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <h3>20</h3>
                        <div>Comentários</div>
                    </div>
                </div>
            </div>
            <a href="#/Admin/pages/posts/comments/listar.html">
                <div class="panel-footer">
                    <span class="pull-left">Ver Todos</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-warning">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-image fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <h3>30</h3>
                        <div>Galerias</div>
                    </div>
                </div>
            </div>
            <a href="#/Admin/pages/galerias/listar.html">
                <div class="panel-footer">
                    <span class="pull-left">Ver Todas</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-danger">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-file-text fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <h3>40</h3>
                        <div>Paginas</div>
                    </div>
                </div>
            </div>
            <a href="#/Admin/pages/paginas/listar.html">
                <div class="panel-footer">
                    <span class="pull-left">Ver Detalhes</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-6">

        <!-- .panel -->
        <div class="panel panel-default">

            <div class="panel-heading">
                <i class="fa fa-bar-chart-o fa-fw"></i> Últimos Posts
            </div>

            <div class="panel-body no-padding">
                <div class="table-responsive">
                    <table class="table table-condensed table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">#ID</th>
                            <th class="text-center">Post</th>
                            <th class="text-center">Usuário</th>
                            <th class="text-center">Data</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center">10</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">9</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">8</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">7</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">6</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">5</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        <tr>
                            <td class="text-center">1</td>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015 - 13:35:29</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->

    </div>
    <div class="col-lg-6">

        <!-- .panel -->
        <div class="panel panel-default">

            <div class="panel-heading">
                <i class="fa fa-bar-chart-o fa-fw"></i> Últimos Comentários
            </div>

            <div class="panel-body no-padding">
                <div class="table-responsive">
                    <table class="table table-condensed table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">Artigo</th>
                            <th class="text-center">Comentário</th>
                            <th class="text-center">Usuário</th>
                            <th class="text-center">Data</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        <tr>
                            <td class="text-center">Artigo 1</td>
                            <td class="text-center">Bom Dia!</td>
                            <td class="text-center">Jean Carlos</td>
                            <td class="text-center">22/03/2015</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
        <!-- /.panel -->

    </div>
    <!-- /.col-lg-8 -->
</div>
<!-- /.row -->

<%@include file="partials/footer.jsp" %>