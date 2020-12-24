# TokenScript documents

This repo has the source code of [tokenscript.org website](http://tokenscript.org) as well as the [TokenScript github Page](https://tokenscript.github.io/TokenScript/)

## Build the documents:

1. Download and install [Dita Open Kit](https://www.dita-ot.org)

2. Install plugin net.infotexture.dita-bootstrap

````
$ dita --install net.infotexture.dita-bootstrap
````

3. Make a website for documents. If dita is in `$PATH` you can do this:

````
$ dita --project config/website.yaml
````

Otherwise, say, dita is installed in `/home/christoph/dita-ot-3.5.2/bin/dita` do this
````
$ /home/christoph/dita-ot-3.5.2/bin/dita --project config/website.yaml
````

Which will create a website in the `out/` directory.

4. If you have the credential, you can upload the website to a web hosting account.

````
$ lftp -c 'open cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/ ./'
````

## Build with Make

A Makefile is provided to make frequent build tasks easy.

### Build website

    $ make website

### Build website and upload in one go

    $ make upload

### Build TokenScript's docs directory

Suppose TokenScript repo has a local clone `../TokenScript/`, this will recreate its docs folder. Note that docs folder has more content than the website as it also include implementer-only information.

    $ make OUTPUT_DIR=../TokenScript/ docs

