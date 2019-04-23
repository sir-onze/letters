BEGIN {
FS = ";"
i=0
j=0
r=0
}


END {
	
	for (t = 0; t <j; t++){
		print(cidade[t],resultado[t],data[t]);
	}
	print ("Cidades desconhecidas:",nill[i]);
}