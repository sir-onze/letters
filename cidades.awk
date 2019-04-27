
BEGIN {
    #include <stdio.h>
    FS = ";"
    j=0
    v=0

    html_start = "<html><body><h1><center> Trabalho Prático de Processamento de Linguagens </center></h1><p><b> Datas das cartas </b></p>"
    html_end = "</body>\n </html>"
    html_break = "<br>"
    html_link_open = "<li> <a href='"
    close_tag ="'>"
    html_link_close= "</a></li>\n"
    nome = "html/%s.html"
    html_image ="<img src=\"%s\" alt=\"%s\" width="800" height="60" align="left" >"

    image=sprintf(html_image,"../images/sep.png","Separator");
}

($3=="        "){
    nill=++i;cidade[j]
}

($3!="        "){
	split($2,ano,".");
	if((z=existe(cidade,$3))==0){
		cidade[j]=$3;
		resultado[j]+=1;
		datas[j][ano[1]][$3] = 0;
		j++;
	}
	else{
        datas[z][ano[1]][$3] = 0;
		resultado[z]+=1;
	}
}



END {
	print html_start >"html/cidades.html"
	for (t = 0; t <j; t++){
		print("A cidade",cidade[t],"tem no registo "resultado[t]," carta(s) escritas.")>"html/cidades.html";
		print html_break>"html/cidades.html";
		print "Cartas que possuem anos referentes a :" >"html/cidades.html";
				for(e in datas[t]){
					print e >"html/cidades.html";
		}
		print html_break >"html/cidades.html";
		print image >"html/cidades.html";
		print html_break >"html/cidades.html";
		print html_break >"html/cidades.html";
	}
	print ("Existem ",nill,"de cartas sem registo do local.")>"html/cidades.html";
	print html_end > "html/cidades.html"
}


function existe(cidade,palavra){
	for (q = 0; q <length(cidade); q++){
		if(cidade[q]==palavra) return q;
			}

	return 0;
}
