all: index.html

%.html: %.md
	./m2d $< index.template.html > $@
