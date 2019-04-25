run:
	mkdir html
	gawk -f cidades.awk < cartasetiopia.csv
	gawk -f lista.awk < cartasetiopia.csv
	gawk -f index.awk < cartasetiopia.csv
	gawk -f main.awk < cartasetiopia.csv
	firefox html/indice.html

clean:
	rm -r "html"
