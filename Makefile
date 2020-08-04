DITA=/opt/dita-ot-3.5.2/bin/dita
DITA_PLUGINS := $(shell $(DITA) plugins)
ifeq (,$(findstring net.infotexture.dita-bootstrap,$(DITA_PLUGINS)))
	$(eval dita --install net.infotexture.dita-bootstrap)
endif

% : %.ditamap
	dita --input=$^ --format=html5-bootstrap
