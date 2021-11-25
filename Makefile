index.html: template.html homepage.html.tmp
	m4 $< > $@
	tidy -modify -config tidy.config $@

.INTERMEDIATE: homepage.html.tmp

homepage.html.tmp: homepage.md
	npm exec -- commonmark --smart < $< > $@
