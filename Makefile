run:
	gawk -f cidades.awk < cartasetiopia.csv
	gawk -f lista.awk < cartasetiopia.csv
	gawk -f index.awk < cartasetiopia.csv
	gawk -f main.awk < cartasetiopia.csv

clean:
	rm -f /html/cidades.html
	rm -f /html/index.html
	rm -f /html/indice.html
	rm -f /html/lista.html