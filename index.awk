BEGIN{
FS = ";"
html_start = "<html><body><h1>Trabalho Prático de Processamento de Linguagens</h1><p>anos das cartas </p>"
html_end = "</body>\n </html>"
html_break = "<br>"
html_link_open = "<li> <a href='"
close_tag ="'>"
html_link_close= "</a></li>\n"

file_head = "html/%s.html"
file_short = "%s.html"


ano=0;
i=1
titulo[0]=1
resumo[0]="Empty"


print html_start > "html/index.html";


}

{
	split($2,aux,".");
	split(aux[1],a,"        ");
	if(a[2]!=ano){
		if(i==1){
			ano=a[2];
			file = sprintf(file_head,ano);
			files = sprintf(file_short,ano);
			print html_start > file;
			print ("Título : ",$4) > file;
			print(html_link_open,files,close_tag,a[2],html_link_close) >"html/index.html";
			titulos=2;
			print html_end > file;
		}
			
		else{
			file = sprintf(file_head,ano);
			files = sprintf(file_short,ano);
			
			print "entrei";
			for(i in titulo){
				print ("Titulo:",titulo[i]) > file;
				print ("Resumo:",resumo[i])	> file;
				print html_break > file;
				}
		
			print(html_link_open,files,close_tag,a[2],html_link_close) >"html/index.html";
			i=1;
			ano=0;
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