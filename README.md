# TokenScript documents

This repo has the source code TokenScript website's documents and SmartLayer website's documents.

## Build the documents:

1. Download and install [Dita Open Kit](https://www.dita-ot.org)

2. Install plugins net.infotexture.dita-bootstrap and fox.jason.favicon

````
$ dita install fox.jason.extend.css
$ dita install fox.jason.favicon
$ dita install net.infotexture.dita-bootstrap
````

Note that the order of the installation is strict and if you failed to follow this exact order when intalling the plugins, you will need to uninstall all of them and start again. This is the case with dita-ot 4.1 and might be resolved one day.

3. Make a website for documents. If dita is in `$PATH` you can do this:

````
$ dita --project config/tokenscript-docsite.yaml
````

Otherwise, say, dita is installed in `/home/christoph/dita-ot-4.1/bin/dita` do this
````
$ /home/christoph/dita-ot-4.1/bin/dita --project config/tokenscript-docsite.yaml
````

Which will create a website in the `out/` directory.

4. If you have the credential, you can upload the website to a web hosting account.

````
$ lftp -c 'open cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/ ./'
````

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
$ dita uninstall fox.jason.favicon
$ dita uninstall fox.jason.extended.css
$ dita install fox.jason.extend.css
$ dita install fox.jason.favicon
$ dita install net.infotexture.dita-bootstrap
````
