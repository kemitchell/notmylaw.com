index.html: template.html homepage.html.tmp
	m4 $< > $@

.INTERMEDIATE: homepage.html.tmp

homepage.html.tmp: homepage.md
	npm exec -- commonmark --smart < $< > $@
