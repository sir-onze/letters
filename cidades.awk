
BEGIN {
#include <stdio.h>
FS = ";"
i=0
j=0
r=0
html_start = "<html><body><h1>Processador de Cartas setecentistas da Etiopia</h1><p>Numero de cartas por local </p>"
html_end = "</body>\n </html>"
html_break = "<br>"


}

($3=="        "){nill[i]=++i;cidade[j]}

($3!="        "){
	if((z=existe(cidade,$3))==0){
		cidade[j]=$3;
		resultado[j]+=1;
		j++;
	}
	else{
		resultado[z]+=1;
		ci=cidade[z]
		
	}

}



END {
	print html_start >"html/cidades.html"
	for (t = 0; t <j; t++){
		print("A cidade",cidade[t],"tem no registo "resultado[t]," carta(s) escritas.")>"html/cidades.html";
		print html_break>"html/cidades.html";
		print html_break>"html/cidades.html";
	}
	print ("Existem ",nill[i],"de cartas sem registo do local.")>"html/cidades.html";
	print html_end > "html/cidades.html"
}


function existe(cidade,palavra){
	for (q = 0; q <length(cidade); q++){
		if(cidade[q]==palavra) return q;
			}

	return 0;
}

