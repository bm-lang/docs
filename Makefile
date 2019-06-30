all: menu css html

css:
	sass ./sass/bm.scss ./docs/styles/bm.css

html:
	asciidoctor --verbose --warnings \
		--backend html5 \
		--doctype book \
		--attribute stylesheet=./styles/bm.css \
		--attribute linkcss \
		--attribute copycss! \
		--source-dir ./src \
		--destination-dir ./docs \
		src/index.adoc

open:
	open ./docs/index.html

watch: open
	nodemon --verbose \
		--watch src \
		--watch sass \
		--ignore src/menu.adoc \
		--ext "scss adoc html" \
		--exec make

menu:
	./make-menu.sh
