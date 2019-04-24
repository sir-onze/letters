
BEGIN {
#include <stdio.h>
FS = ";"
j=0
v=0

html_start = "<html><body><h1>Trabalho Prático de Processamento de Linguagens</h1><p>Datas das cartas </p>"
html_end = "</body>\n </html>"
html_break = "<br>"
html_link_open = "<li> <a href='"
close_tag ="'>"
html_link_close= "</a></li>\n"
nome = "html/%s.html"

}

($3=="        "){nill[i]=++i;cidade[j]}

($3!="        "){
	if((z=existe(cidade,$3))==0){
		cidade[j]=$3;
		resultado[j]+=1;
		j++;
		datas[v]=$2;
		v++;
	}
	else{
		resultado[z]+=1;
		datas[v]=$2;
		v++;
		
	}
	
}



END {
	print html_start >"html/cidades.html"
	for (t = 0; t <j; t++){
		print("A cidade",cidade[t],"tem no registo "resultado[t]," carta(s) escritas.")>"html/cidades.html";

			for (d=0;d<j;d++){
				print cidade[t];
				print datas[d];

			}

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

