
input=./sample-markdown-from-freeplane.py.mm/introduction-to-freeplane.py.md

ext=extra nl2br meta
extentions=$(addprefix -x markdown.extensions.,$(ext))

default:
	python2.7 -m markdown ${extentions} $(input) --output_format html5 --file $(subst .md,.html,$(input)) --verbose
