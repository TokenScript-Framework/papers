# TokenScript and Smart Layer Documentation

This repository contains the source code for the TokenScript and SmartLayer websites' documentation. This repository uses dita. See [why not GitBook](WHY-NOT-GITBOOK.md).

## Building the Documents:

1. Download and install [Dita Open Toolkit](https://www.dita-ot.org). We only test it on dita-4.1 presently.

2. Install the plugins `net.infotexture.dita-bootstrap` and `fox.jason.favicon` in the following order:

````
$ dita install fox.jason.extend.css
$ dita install fox.jason.favicon
$ dita install net.infotexture.dita-bootstrap
````

Please note that the order of installation is crucial on some systems. If you fail to follow this exact order when installing the plugins, you may need to uninstall all of them and start again.

3. Generate a website for the documents. If `dita` is in your `$PATH`, you can do this:

````
$ dita --project config/smartlayer-docsite.yaml -o out/document.smartlayer.network
````

This will create a website in the `out/` directory.

## Document Structure

The table below provides an overview of the directories and their contents:

| Directory            | Status | Content |
|----------------------|--------|---------|
| cli/                 | To be moved to product/cli | Command-line utility documents. We plan to have a product folder to introduce a few products and CLI is one of them. |
| concept/             | Stays | Concepts |
| developers/          | To be removed with the introduction of @audience | Developer-oriented documents, to be moved to usecase, guide |
| elements/            | Remains | TokenScript elements |
| faq/                 | Remains | FAQ items - many clusters in FAQs.md |
| features/            | Remains | Which version of Smart Layers or TokenScript has which feature. |
| guide/               | Remains | Developer-oriented code-based guides |
| integration/         | To be dispersed into other directories | Originally covering an integration guide and a few documents |
| privacyandsecurity/  | To be dispersed into other directories |      |
| research/            | Papers and studies | This is the only container type directory. Other directories represent a category of information, this is just a container of all research to be shared. |
| specs/               | To be renamed spec/ | Tech specifications that are usually only interesting to the implementors |
| technology/          | Remains | It's similar to a codeless version of the guide/, it contains introduction materials written for a wider audience and does not use code immediately to solve every problem. |
| tokenscript-paper/   | Remains | Originally the paper was written in chapters in md, it was later integrated with dita so each chapter remains a file in md. There is no intention to change it too much. |
| usecase/             | Remains | Use-case based materials, there are case-studies and guides. Use-case guides are more technical. |

## Notes for Contributors

We recommend creating a `.git/hooks/pre-commit` with the following content to prevent errors in the commit:

```
#!/bin/sh
dita --project config/tokenscript-docsite.yaml --project config/smartlayer-docsite.yaml
```
Please note that this is not added to the git repo because your `dita` executable might be in a different location or you may be using Windows and lack `/bin/sh`.

## Notes for Sysop

If you have the necessary credentials, you can upload the website to a web hosting account, like this:

````
$ lftp -c 'open cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/ ./'
````

## Troubleshooting

### `"html5-bootstrap" is not a recognized transformation type`

If you encounter the following error:

````
$ dita --project config/smartlayer-docsite.yaml -o out/document.smartlayer.network
Error: [DOTA001F][FATAL] "html5-bootstrap" is not a recognized transformation type. Supported transformation types are dita, eclipsehelp, html5, htmlhelp, markdown, markdown_gitbook, markdown_github, pdf, pdf2, xhtml.
make: *** [Makefile:18: website] Error 1
````

This is caused by `net.infotexture.dita-bootstrap` not being installed properly. You can resolve it by uninstalling and reinstalling the plugins in the correct order:

````
$ dita uninstall net.infotexture.dita-bootstrap
$ dita uninstall fox.jason.favicon
$ dita uninstall fox.jason.extended.css
$ dita install fox.jason.extend.css
$ dita install fox.jason.favicon
$ dita install net.infotexture.dita-bootstrap
````
