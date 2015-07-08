<%-- 
    Document   : footer
    Created on : 20/06/2015, 21:32:28
    Author     : HT
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="url" scope="session" value="${'http://localhost:8080/JavaCMS/'}"/>

    </div>
    <!-- /.Conteúdo das Paginas -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<!-- BootStrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- MetisMenu -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/metisMenu/2.0.2/metisMenu.min.js"></script>
<!-- Custom JavaScript -->
<script src="<c:out value="${url}"/>public/js/backend.custom.js"></script>

</body>

</html>

