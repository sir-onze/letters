BEGIN{

html_start = "<html><body><h1>Trabalho Prático de Processamento de Linguagens</h1><p>Datas das cartas </p>"
html_end = "</body>\n </html>"
html_break = "<br>"
html_link_open = "<li> <a href='"
close_tag ="'>"
html_link_close= "</a></li>\n"
i=0

}

{
	datas[i]=$2;

sprintf(stringa, "Number of fingers making up a hand are %f", fingers);

}

END{
	for(i in datas){
		print datas[i] > "html/index.html";
		print html_break > "html/index.html";
	}

}