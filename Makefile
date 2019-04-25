run:
	sudo mkdir html
	sudo gawk -f cidades.awk < cartasetiopia.csv
	sudo gawk -f lista.awk < cartasetiopia.csv
	sudo gawk -f index.awk < cartasetiopia.csv
	sudo gawk -f main.awk < cartasetiopia.csv
	sudo open -a firefox html/indice.html
	

clean:
	sudo rm -r "html"