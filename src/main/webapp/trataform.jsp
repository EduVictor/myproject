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
	        out.println("Nome n�o foi digitado");
	    else
	        out.println("Seu nome � " + nome);
	    
	    int num = Integer.parseInt(request.getParameter("number"));
	    
	    if(ehPar(num)){
	        out.println("Esse n�mero � par!");
	    }
	    else{
	        out.println("Esse n�mero � impar!");
	    }
	    
	    if(ehPrimo(num)){
	        out.println("Esse n�mero � primo!");
	    }
	    else{
	        out.println("Esse n�mero n�o � primo!");
	    }
	%>

	<br>E-Mail:
	<%=request.getParameter("txtemail")%><br> Data de Nascimento:
	<%=request.getParameter("txtdtnasc")%><br>
	<%@include file="rodape.jsp"%>
</body>
</html>