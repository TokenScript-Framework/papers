ifeq ($(DITA_EXEC),)
	DITA_EXEC=dita
endif
ifeq ($(OUTPUT_DIR),)
	OUTPUT_DIR=out
endif
DITA_PLUGINS := $(shell $(DITA_EXEC) plugins)
ifeq (,$(findstring net.infotexture.dita-bootstrap,$(DITA_PLUGINS)))
$(shell $(DITA_EXEC) --install net.infotexture.dita-bootstrap)
endif

%: config/%.yaml
	-test -d $(OUTPUT_DIR) || mkdir out
	-test -d $(OUTPUT_DIR)/$@ && rm -rf $(OUTPUT_DIR)/$@
	$(DITA_EXEC) --project $^ -o $(OUTPUT_DIR)/$@

upload: website
	lftp -c 'open cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/$^/ ./'

