# TokenScript documents

This repo has the source code of [tokenscript.org website](http://tokenscript.org) as well as the [TokenScript github Page](https://tokenscript.github.io/TokenScript/)

## Build the documents:

1. Download and install [Dita Open Kit](https://www.dita-ot.org)

2. Install plugins net.infotexture.dita-bootstrap and fox.jason.favicon

````
$ dita install net.infotexture.dita-bootstrap
$ dita install fox.jason.favicon
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

The following will work only if you have the correct upload credential in your `.netrc` file. Don't use it if you are not the webmaster.

    $ make upload

### Build TokenScript's docs directory

Suppose TokenScript repo has a local clone `../TokenScript/`, this will recreate its docs folder. Note that docs folder has more content than the website as it also include implementer-only information.

    $ make OUTPUT_DIR=../TokenScript/ docs

## Troubleshooting

### `"html5-bootstrap" is not a recognized transformation type`

````
$ make website
Error: [DOTJ020W][WARN] At least one plug-in in '[fox.jason.extend.css]' is required by plug-in 'net.infotexture.dita-bootstrap'. Plug-in 'net.infotexture.dita-bootstrap' cannot be loaded. Check and see whether all prerequisite plug-ins are installed in toolkit.
Found dita version DITA-OT version 3.7.1. Minimum required is 3.6.
test -d out || mkdir out
test -d out/website && rm -rf out/website
dita --project config/website.yaml -o out/website
Error: [DOTA001F][FATAL] "html5-bootstrap" is not a recognized transformation type. Supported transformation types are dita, eclipsehelp, html5, htmlhelp, markdown, markdown_gitbook, markdown_github, pdf, pdf2, xhtml.
make: *** [Makefile:18: website] Error 1
````

Cause:

    `net.infotexture.dita-bootstrap` is not installed properly.

Solution:

````
$ dita uninstall net.infotexture.dita-bootstrap
$ dita install fox.jason.extend.css
$ dita install net.infotexture.dita-bootstrap
````
