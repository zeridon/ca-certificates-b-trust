#
# Makefile
#

CERTSDIR = /usr/share/ca-certificates/b-trust

all:

clean:

install:
	mkdir -p $(DESTDIR)/$(CERTSDIR); \
	for p in *.crt; do \
	 install -D -m 644 $$p $(DESTDIR)/$(CERTSDIR)/$$p ; \
	done
