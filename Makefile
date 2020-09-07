ifeq ($(DITA_EXEC),)
	DITA_EXEC=dita
endif
DITA_PLUGINS := $(shell $(DITA_EXEC) plugins)
DITA_OPTIONS=--args.hdr=$(CURDIR)/navbar.xml --args.css=custom.css --args.cssroot=$(CURDIR) --args.hdf=$(CURDIR)/fonts.xml
ifeq (,$(findstring net.infotexture.dita-bootstrap,$(DITA_PLUGINS)))
	$(shell $(DITA_EXEC) --install net.infotexture.dita-bootstrap)
endif

% : %.ditamap
	$(DITA_EXEC) --input=$^ --format=html5-bootstrap $(DITA_OPTIONS) --args.filter=$(CURDIR)/no-implementor.ditaval
	$(DITA_EXEC) --input=$^ --format=html5-bootstrap $(DITA_OPTIONS) --output.dir=$(CURDIR)/implementor
