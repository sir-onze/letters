BEGIN{
    FS = ";"
    html_start = "<html><body><h1><center>Processador de Cartas setecentistas da Etiopia</center></h1><p><b>Anos das cartas </b></p>"
    html_end = "</body>\n </html>"
    html_break = "<br>"
    html_link_open = "<li> <a href='"
    close_tag ="'>"
    html_link_close= "</a></li>\n"
    html_image ="<center><img src=\"%s\" alt=\"%s\" width="1024" height="60" style=\"center\"></center>"

    file_head = "html/%s.html"
    file_short = "%s.html"

    ano=0;
    i=1;
    titulo[0]=1
    resumo[0]="Empty"
    fst=1;

    image=sprintf(html_image,"../images/sep.png","Separator");
    print html_start > "html/index.html";
}

{
	split($2,aux,".");
	split(aux[1],a,"        ");

	if(ano!=a[2]){
		ano_ant=ano
		ano=a[2];
		if(ano!=0){

		}
		file = sprintf(file_head,ano_ant);
		files = sprintf(file_short,ano_ant);
		print html_start > file;
		for(j in titulo){
			if(titulo[j]!="" && resumo[j]!=""){
				print ("Titulo:",titulo[j]) > file;
				print html_break > file;
				print ("Resumo:",resumo[j])	> file;
				print html_break > file;
				print html_break > file;
				print image > file;
				print html_break > file;
				print html_break > file;
				titulo[j]="";
				resumo[j]="";
			}
		}
		print html_break > file;
		print htnl_end > file;

		print(html_link_open,files,close_tag,ano_ant,html_link_close) >"html/index.html";
		i=1;
		titulo[i]=$4;
		resumo[i]=$6;
	    i++;

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
