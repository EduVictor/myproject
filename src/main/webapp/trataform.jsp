<%@page contentType="text/html"
	import="java.util.*, java.text.*, java.lang.String"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<%@include file="topo.jsp"%>
	Dados do formulario
	<br>
	<%
	    String nome = request.getParameter("txtnome");
	    if (nome == "")
	        out.println("Nome não foi digitado");
	    else
	        out.println("Seu nome é " + nome);
	    
	    int num = Integer.parseInt(request.getParameter("number"));
	    
	    if(ehPar(num)){
	        out.println("Esse número é par!");
	    }
	    else{
	        out.println("Esse número é impar!");
	    }
	    
	    if(ehPrimo(num)){
	        out.println("Esse número é primo!");
	    }
	    else{
	        out.println("Esse número não é primo!");
	    }
	%>

	<br>E-Mail:
	<%=request.getParameter("txtemail")%><br> Data de Nascimento:
	<%=request.getParameter("txtdtnasc")%><br>
	<%@include file="rodape.jsp"%>
</body>
</html>