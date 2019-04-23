
BEGIN {
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
		data[j]=$2;
		resultado[j]+=1;
		j++
	}
	else{
		resultado[z]+=1;
		data[z]=$2;
	}

}

END {
	print html_start >"cidades.html"
	for (t = 0; t <j; t++){
		print("A cidade",cidade[t],"tem no registo "resultado[t]," carta(s) escritas.")>"cidades.html";
		print html_break>"cidades.html";
	}
	print ("Existem ",nill[i],"de cartas sem registo do local.")>"cidades.html";
	print html_end > "cidades.html"
}


function existe(cidade,palavra){
	for (q = 0; q <length(cidade); q++){
		if(cidade[q]==palavra) return q;
			}

	return 0;
}

