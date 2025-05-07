.POSIX: # POSIX Makefile, use make,gmake,pdpmake,bmake
.SUFFIXES:
.PHONY: all clean install check

PROJECT   =archive
VERSION   =1.0.0
PREFIX    =/usr/local

all:
clean:
install:
check:
## -- BLOCK:license --
install: install-license
install-license: README.md COPYING
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md COPYING $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/ocrpdf $(DESTDIR)$(PREFIX)/bin
	cp bin/archive $(DESTDIR)$(PREFIX)/bin
	cp bin/pdfrun $(DESTDIR)$(PREFIX)/bin
	cp bin/txtrun $(DESTDIR)$(PREFIX)/bin
	cp bin/lastdown $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
