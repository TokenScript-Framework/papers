# TokenScript guides

This repo was created in response to the [TokenScript documentation plan](https://community.tokenscript.org/t/what-kind-of-documents-do-we-need-for-tokenscript/366).

Currently Christoph mans this project with input from various team members.

To build the documents:

1. Download and install [Dita Open Kit](https://www.dita-ot.org)

2. Install plugin net.infotexture.dita-bootstrap

````
$ dita --install net.infotexture.dita-bootstrap
````

3. Make the documents. If dita is in `$PATH` you can do this:

````
$ make Documents Guides Specs
````

Otherwise, say, dita is installed in `/home/christoph/dita-ot-3.5.2/bin/dita` do this
````
$ DITA_EXEC=/home/christoph/dita-ot-3.5.2/bin/dita make Documents Guides Specs 
````

Which will create the document output from the 3 ditamap files in the `out/` directory.

4. If you have the credential, you can upload the website to a web hosting account.

````
$ lftp -c 'open cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/ ./'
````
