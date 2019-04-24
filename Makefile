run:
	gawk -f cidades.awk < cartasetiopia.csv
	gawk -f lista.awk < cartasetiopia.csv
	gawk -f index.awk < cartasetiopia.csv
	gawk -f main.awk < cartasetiopia.csv
	open -a firefox html/indice.html

clean:
	rm "html/cidades.html"
	rm "html/index.html"
	rm "html/indice.html"
	rm "html/lista.html"