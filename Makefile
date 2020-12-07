ifeq ($(DITA_EXEC),)
	DITA_EXEC=dita
endif
DITA_PLUGINS := $(shell $(DITA_EXEC) plugins)
ifeq (,$(findstring net.infotexture.dita-bootstrap,$(DITA_PLUGINS)))
$(shell $(DITA_EXEC) --install net.infotexture.dita-bootstrap)
endif

%: config/%.yaml
	-test -d out || mkdir out
	-test -d out/$@ && rm -rf out/$@
	$(DITA_EXEC) --project $^ -o out/$@

upload-docs-site: implementer-site
	lftp -c 'open www.cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/$^/ docs.tokenscript.org/'

upload-main-site: website
	lftp -c 'open cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/$^/ ./'

upload: upload-docs-site upload-main-site
