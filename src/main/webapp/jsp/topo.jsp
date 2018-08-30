<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%!public String fncMES(int mes) {
        String retorno = "";
        switch (mes) {
        case 1:
            retorno = "Janeiro";
            break;
        case 2:
            retorno = "Fevereiro";
            break;
        case 3:
            retorno = "Março";
            break;
        case 4:
            retorno = "Abril";
            break;
        case 5:
            retorno = "Maio";
            break;
        case 6:
            retorno = "Junho";
            break;
        case 7:
            retorno = "Julho";
            break;
        case 8:
            retorno = "Agosto";
            break;
        case 9:
            retorno = "Setembro";
            break;
        case 10:
            retorno = "Outubro";
            break;
        case 11:
            retorno = "Novembro";
            break;
        case 12:
            retorno = "Dezembro";
            break;
        }
        return retorno;
    }

public boolean ehPar(int num){
    if(num % 2 == 0){
        return true;
    }
    else{
        return false;
    }
}
    
public boolean ehPrimo(int num){
    for (int j = 2; j < num; j++) {
        if (num % j == 0)
            return false;   
    }
    return true;
}

public int[] divisores(int num){
    int cont = 0, cont2 = 0; 
    for(int i = 0; i < num; i++){
        if(num % i == 0){
            cont++;
        }
    }
    int div[] = new int[cont];
    for(int i = 0; i < num; i++){
        if(num % i == 0){
            div[cont2] = i;
        }
    }
    return div;
}


    %>
<h1>Pagina JSP</h1>
<h4>
	<%
	    int mes = Integer.parseInt(new SimpleDateFormat("M").format(new Date()));
	    int dia = Integer.parseInt(new SimpleDateFormat("dd").format(new Date()));
	    int ano = Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()));

	    out.println("Hoje é dia " + dia + " de " + fncMES(mes) + " de " + ano);
	%>
</h4>