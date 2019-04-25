run:
	sudo mkdir html
	sudo mkdir dot
	sudo gawk -f cidades.awk < cartasetiopia.csv
	sudo gawk -f lista.awk < cartasetiopia.csv
	sudo gawk -f index.awk < cartasetiopia.csv
	sudo gawk -f dot.awk < cartasetiopia.csv
	sudo gawk -f main.awk < cartasetiopia.csv
	sudo dot -T jpg dot/graph.dot -o dot/graph.jpg
	sudo open -a firefox html/indice.html
	

clean:
	sudo rm -r "html"
	sudo rm -r "dot"
	