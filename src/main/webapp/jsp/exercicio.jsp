<%@page contentType="text/html" import="java.util.*, java.text.*" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="topo.jsp"%>
        <form action="trataform.jsp" method="post">
            Número: <input type="number" name="number">
            <input type="submit" value="Enviar"/>
        </form>
        <%@include file="rodape.jsp"%>
    </body>
</html>