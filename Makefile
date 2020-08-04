DITA=dita
DITA_PLUGINS := $(shell $(DITA) plugins)
ifeq (,$(findstring net.infotexture.dita-bootstrap,$(DITA_PLUGINS)))
	dita --install net.infotexture.dita-bootstrap
endif

% : %.ditamap
	dita --input=$^ --format=html5-bootstrap

