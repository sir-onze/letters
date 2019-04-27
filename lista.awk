BEGIN {
    FS = ";"
    html_start = "<html><body><h1><center>Processador de Cartas setecentistas da Etiopia</center></h1><p>Correspondência entre as cartas e os apelidos dos envolvidos </p>"
    html_end = "</body>\n </html>"
    html_break = "<br>"

    print html_start > "html/lista.html"
}


{
    print("("$1,",",$5,")") > "html/lista.html";
    print html_break > "html/lista.html";
}

END {
	print html_end > "html/lista.html";
}
