BEGIN{

html_start = "<html><body><h1><center> Processador de Cartas setecentistas da Etiopia </center></h1><section><img class=\"mySlides\" src=\"../images/back.png\" style=\"width:100%\";background-color=black></section><section class=\"w3-container w3-center\" style=\"max-width:600px\"><h2 class=\"w3-wide\">Funcionalidades</h2><p class=\"w3-opacity\"><i></i></p></section> "




html_end = "<footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge"><p class="w3-medium"><center>Powered by Tiago Baptista, Ricardo Pereira, Lucas Pereira</center></a></p></footer></body>\n </html>"

html_break = "<br>"
html_link_open = "<li> <a href='"
close_tag ="'>"
html_link_close= "</a></li>\n"
html_image ="<img src=\"%s\" alt=\"%s\" width="1024" height="300">"

}

END{

print html_start > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";

print(html_link_open,"cidades.html",close_tag,"Consultar número de cartas por cidade",html_link_close) > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";

print(html_link_open,"index.html",close_tag,"Consultar cartas por ano",html_link_close) > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";

print(html_link_open,"lista.html",close_tag,"Consultar correspondência entre cartas e apelidos dos envolvidos",html_link_close) > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";


print(html_link_open,"dot.html",close_tag,"Consultar relação entre autores e destinatários",html_link_close) > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";

print html_end > "html/indice.html";
}

