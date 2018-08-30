<%@page contentType="text/html" import="java.util.*, java.text.*"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
</head>
<body>
	<form action="/myproject/CalcServlet" method="post">
		Número: <input type="number" name="number"> Nome:<input
			type="text" name="txtnome" /><br> E-Mail:<input type="text"
			name="txtemail" /><br> Data de Nascimento:<input type="text"
			name="txtdtnasc" /><br> <input type="submit" value="Enviar" />

	</form>
</body>
</html>