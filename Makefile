exclude = Makefile
files = $(shell ls | sed "s/$(exclude)//g")

install:
	@stow -R -v -t ~ */


$(files):
	@stow -R -v -t ~ $@

.PHONY: $(files)
