BEGIN{

html_start = "<html><body><h1>Trabalho Prático de Processamento de Linguagens</h1><p>Apresentação das alíneas </p>"
html_end = "</body>\n </html>"
html_break = "<br>"
html_link_open = "<li> <a href='"
close_tag ="'>"
html_link_close= "</a></li>\n"

}

END{

print html_start > "html/indice.html";

print(html_link_open,"cidades.html",close_tag,"(a) Contar  o  numero  de  cartas  por  local  (considere  o  local  NIL  quando  se  desconhece)  relacionando-as com o ano de escrita.",html_link_close) > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";

print(html_link_open,"index.html",close_tag,"(b) Criar um index HTML com todos os anos, em que cada ano deve ligar a outra pagina HTML onde conste, para cada carta desse ano, o tıtulo da carta e o seu resumo.",html_link_close) > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";

print(html_link_open,"lista.html",close_tag,"(c) Mostrar  a  lista  das  cartas—cada  uma  identificada  pelo  numero,  devidamente  associada  (em  paresnum-nome) aos Apelidos das pessoas envolvidas no assunto relatado.",html_link_close) > "html/indice.html";

print html_break > "html/indice.html";
print html_break > "html/indice.html";


print(html_link_open,"dot.html",close_tag,"(d) Desenhar um grafo (em DOT) que relacione cada autor (identificado pelo seu nome) com o destinatario(tambem identificado pelo nome). ",html_link_close) > "html/indice.html";



print html_end > "html/indice.html";
}

