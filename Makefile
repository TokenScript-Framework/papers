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
DITA_VER:=$(shell $(DITA_EXEC) -version 2>/dev/null)

%: config/%.yaml
ifdef DITA_VER
	@echo "Found dita version $(DITA_VER). Minimum required is 3.6."
else
	$(error Not found: dita executable. Install dita-ot and configure environment variable DITA_EXEC)
endif
	-test -d $(OUTPUT_DIR) || mkdir out
	-test -d $(OUTPUT_DIR)/$@ && rm -rf $(OUTPUT_DIR)/$@
	$(DITA_EXEC) --project $^ -o $(OUTPUT_DIR)/$@

help:
	@echo USAGE HELP
	@echo 
	@echo make {configuration}
	@echo You can find a list of available configurations in config directory. Look for the .yaml files
	@echo 
	@echo You can also do
	@echo 
	@echo    $$ make upload
	@echo 
	@echo which uploads the result to a website. This only make sense for tokenscript webmaster who have an ftp login.

upload: website
	lftp -c 'set ftp:ssl-protect-data true; open s01cd.syd6.hostingplatform.net.au; mirror -x .git --exclude-glob-from=.gitignore -R out/$^/ ./'

