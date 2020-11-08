.PHONY: all

all:
	docker run --interactive --rm --user $(shell id --user):$(shell id --group) pandoc/core:2.11.0.2 < flossdaily.md --toc --from markdown --to html --standalone --metadata title="A Collection of Short Stories Inspired by Reddit" --metadata subtitle="Authored by flossdaily / Compiled by redct. Saturday, January 9, 2010 / Recompiled by indiv0. Friday, November 6, 2020" > flossdaily.html
