#  _  _ ___    
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#              

Name.pdf: Name.md
	pandoc --pdf-engine=xelatex --template=~/.vim/templates/perdown.tex Name.md -o Name.pdf

force:
	touch Name.md
	make
