
clean:
	rm -rf _book

deploy:
	/bin/bash _deploy.sh

book:
	quarto render
