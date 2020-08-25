# TokenScript guides

This repo was created in response to the [TokenScript documentation plan](https://community.tokenscript.org/t/what-kind-of-documents-do-we-need-for-tokenscript/366).

Currently Christoph mans this project with input from various team members.

To build the documents:

1. Download and install [Dita Open Kit](https://www.dita-ot.org)

2. Install plugin net.infotexture.dita-bootstrap

````
$ dita --install net.infotexture.dita-bootstrap
````

3. Make the documents

````
$ make Documents Guides Specs
````

Which will create the document output from the 3 ditamap files in the `out/` directory.

4. (if you have the credential) Upload the documents to the current hosting website

````
$ lftp -c 'open cobalt.primarywebservers.com; mirror -R out/ ./'
````
