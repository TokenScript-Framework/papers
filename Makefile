DITA_EXEC=dita
DITA_PLUGINS := $(shell $(DITA_EXEC) plugins)
DITA_OPTIONS=--args.hdr=$(CURDIR)/navbar.xml --args.css=custom.css --args.cssroot=$(CURDIR)
ifeq (,$(findstring net.infotexture.dita-bootstrap,$(DITA_PLUGINS)))
	$(shell dita --install net.infotexture.dita-bootstrap)
endif

% : %.ditamap
	$(DITA_EXEC) --input=$^ --format=html5-bootstrap $(DITA_OPTIONS)
