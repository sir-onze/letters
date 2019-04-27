BEGIN{
FS = ";"

dot_begin ="digraph{"
dot_end ="}"
dot_relate = "->"
dot_full="[label=\"%s\",weight=\"%s\"];";

html_image ="<img src=\"%s\" alt=\"%s\" width="1024" height="300">"
html_start = "<html><body><h1><center> Processador de Cartas setecentistas da Etiopia </center></h1><p><b>Grafo de relacionamento Autor-Destinatário </b></p>"
html_end = "</body>\n </html>"
html_center_open = "<center>"
html_center_close= "</center>"

}


{
apelidos = $5;


split($5,aux,":");
split(aux[1],remetente,"        ");


split($5,aux,":");
split(aux[2],destinatario,"        ");

map[remetente[2]][destinatario[2]]+=1;
			
}


END{
	
print dot_begin > "dot/graph.dot";

	for(i in map){
		for(j in map[i]){
		dot=sprintf(dot_full,map[i][j],map[i][j]);
		if(j=="")
			j="Desconhecido"
		if(i=="")
			i="Desconhecido"

		print(i,dot_relate,j,dot) > "dot/graph.dot";

	}
}

print dot_end > "dot/graph.dot";

print html_start > "html/dot.html";
print html_break > "html/dot.html";
print html_break > "html/dot.html";

image=sprintf(html_image,"../dot/graph.jpg","Grafo Autor-Destinatario");

print (html_center_open,image,html_center_close) > "html/dot.html";

print html_end > "html/dot.html";

	
}