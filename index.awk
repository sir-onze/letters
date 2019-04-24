BEGIN{

html_start = "<html><body><h1>Trabalho Prático de Processamento de Linguagens</h1><p>Datas das cartas </p>"
html_end = "</body>\n </html>"
html_break = "<br>"
html_link_open = "<li> <a href='"
close_tag ="'>"
html_link_close= "</a></li>\n"

print html_start > "html/index.html";
}

{
	print $2 > "html/index.html";
	print html_break > "html/index.html";;
}

END{
	print html_end > "html/index.html";;
}