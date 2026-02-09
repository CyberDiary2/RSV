
PREFIX = /usr/local

rsv: rsv.sh rsv.awk rsv.tsv
	cat rsv.sh > $@
	echo 'exit 0' >> $@
	echo "#EOF" >> $@
	tar cz rsv.awk rsv.tsv >> $@
	chmod +x $@

test: rsv.sh
	shellcheck -s sh rsv.sh

clean:
	rm -f rsv

install: rsv
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f rsv $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/rsv

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/rsv

.PHONY: test clean install uninstall

