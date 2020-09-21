all:
	go build .
install:
	mkdir -p $(DESTDIR)/usr/bin
	cp http-proxy $(DESTDIR)/usr/bin
	chmod 755 $(DESTDIR)/usr/bin/http-proxy
clean:  
	rm -f http-proxy
