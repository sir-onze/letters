BEGIN{

html_start = "<html><body><h1>Trabalho Prático de Processamento de Linguagens</h1><p>anos das cartas </p>"
html_end = "</body>\n </html>"
html_break = "<br>"
html_link_open = "<li> <a href='"
close_tag ="'>"
html_link_close= "</a></li>\n"

file_head = "html/%s.html"


ano
i=0
titulo[0]=1
resumo[0]="Empty"


print html_start > "html/index.html";


}

{
	split($2,a,".");
	if(a[1]!=ano){
		if(titulo[i]=1){
			
			file = sprintf(file_head,ano);
			print html_start > "html/index.html";
			print ("Título : ",$4) > file;
			print(html_link_open,file,close_tag,a[1],html_link_close) >"html/index.html";
			print html_end> "html/index.html";
			ano=a[1];

		}
			
	}
	
	else{
		titulo[i]=$4;
		resumo[i]=$6;
		i++;
	}
	
}

END{
	print html_end > "html/index.html";
}