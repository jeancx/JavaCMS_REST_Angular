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
				Custom JavaScript
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-12">
						<form role="form">

							<div class="form-group">
								<label>CÃ³digo</label>
								<textarea class="editor" id="editor" style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" name="conteudo">
<script>
	/* Custom JavaScript */
</script></textarea>
							</div>

							<button type="submit" class="btn btn-primary">Salvar</button>
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

<!-- Ace Editor -->
<script src="js/jquery-1.8.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.1.9/ace.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.1.9/theme-dreamweaver.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.1.9/mode-html.js"></script>
<script src="<c:out value="${url}"/>public/js/jquery-ace.min.js"></script>
<script>
	$('.editor').ace({
		theme: 'dreamweaver',
		lang: 'html'
	})
</script>


<%--  FOOTER --%>
<%@include file="/backend/partials/footer.jsp" %>