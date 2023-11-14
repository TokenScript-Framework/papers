# TokenScript and Smart Layer Documentations

This repository hosts the documentation source for both TokenScript and SmartLayer websites. We've adopted `dita` for our documentation. Curious about our choice? Check out [why not GitBook](WHY-NOT-GITBOOK.md).

## Compiling the Documentation:

1. **Setup Dita Toolkit**: 
   - Download and set up the [Dita Open Toolkit](https://www.dita-ot.org). Ensure you're using `dita-4.1` as it's the only version we've tested with.

2. **Plugin Installation**: 
   - It's essential to install the plugins in the correct sequence:
     ````
     $ dita install fox.jason.extend.css
     $ dita install fox.jason.favicon
     $ dita install net.infotexture.dita-bootstrap
     ````
     A deviation from this order might necessitate a reinstall.

3. **Dita Diagram Plugin**:
   - Manually copy the `com.oxygenxml.diagrams.svg` folder from the [dia-ot-diagrams-plugin](https://github.com/oxygenxml/dita-ot-diagrams-plugin) to the `plugins` directory in your dita installation. Then, run:
     ```
     $ dita --install
     ```
     A successful installation will acknowledge the plugin `com.oxygenxml.diagrams.svg`.

4. **Generate Stuff**:
   - To create a website for a document project, use:
     ````
     $ dita --project config/smartlayer-docsite.yaml -o out/document.smartlayer.network
     ````
     This command populates the `out/` directory with the website.

   - To create a website for TokenScript project, use:
     ````
     $ dita --project config/tokenscript-docsite.yaml -o out/tokenscript-docs
     ````

   - For compiling the Smart Token paper, use:
     ````
     $ pandoc --toc=true --resource-path=src/papers --csl src/papers/chicago-author-date.csl --citeproc --bibliography src/papers/smart-token-paper.bib -o out/smart-token-paper.pdf src/papers/smart-token-paper.md 
     ````

   - For compiling the TokenScript Design paper, use:
     ````
     $ dita --project config/tokenscript-papers.xml
     ````
     The results - **tokenscript-design-paper.pdf** and **tokenscript-short-paper.pdf** - can be found in `out`

   - For compiling the SmartLayer Overview paper and its detailed counterpart:
     ````
     $ dita --project config/smartlayer-paper.xml
     ````
     The results - **smartlayer-overview.pdf** and **smartlayer-paper.pdf** can be found in `out`

   - For the Smart Token Technical paper, which wasn't using dita, it can be created using
     ````
     $ pandoc --resource-path=src/papers --csl src/papers/chicago-note-bibliography.csl --citeproc --bibliography src/papers/smart-layer-technical-paper.bib -o out/smartlayer-technical-paper.pdf src/papers/smart-layer-technical-paper.md
     ````
     This results a single PDF file: **smart-layer-technical-paper.pdf**.

## Directory Overview:

Here's a snapshot of our directory structure and their respective roles:

| Directory            | Description |
|----------------------|-------------|
| cli/                 | Command-line utility documents. Future plans include moving this to `product/cli`. |
| concept/             | Houses conceptual documents. |
| developers/          | Developer-centric documents. These will be relocated to `usecase` and `guide`. |
| elements/            | TokenScript elements. |
| faq/                 | Frequently Asked Questions. |
| features/            | Details on features across different versions of Smart Layers or TokenScript. |
| guide/               | Code-based guides for developers. |
| integration/         | Initially contained integration guides. These will be distributed among other directories. |
| privacyandsecurity/  | Will be distributed into other directories. |
| research/            | A collection of research papers and studies. |
| specs/               | Technical specifications, primarily for implementors. This will be renamed to `spec/`. |
| technology/          | Introductory materials for a broader audience, sans immediate code solutions. |
| tokenscript-paper/   | Contains chapters of the paper written in markdown. |
| usecase/             | Use-case materials, including technical guides and case studies. |

## For Contributors:

Assuming using Linux or OS X, to avoid commit errors, consider creating a `.git/hooks/pre-commit` with:

```
#!/bin/sh
dita --project config/smartlayer-paper.xml
dita --project config/tokenscript-papers.xml
pandoc --resource-path=src/papers --csl src/papers/chicago-note-bibliography.csl --citeproc --bibliography src/papers/smart-layer-technical-paper.bib  -o out/smart-layer-technical-paper.pdf src/papers/smart-layer-technical-paper.md
```

Then make it executable. This should detect any error before commit.

This isn't added to the git repo due to potential variations in `dita` executable locations and system differences.

## Sysops:

If you possess the requisite credentials, you can upload the website to a hosting account:

````
$ lftp -c 'open cobalt.primarywebservers.com; mirror -x .git --exclude-glob-from=.gitignore -R out/ ./'
````

## Issues and Fixes:

**Error**: `"html5-bootstrap" is not a recognized transformation type`

**Solution**: This arises from an improper installation of `net.infotexture.dita-bootstrap`. Resolve by reinstalling the plugins in the specified order:

````
$ dita uninstall net.infotexture.dita-bootstrap
$ dita uninstall fox.jason.favicon
$ dita uninstall fox.jason.extended.css
$ dita install fox.jason.extend.css
$ dita install fox.jason.favicon
$ dita install net.infotexture.dita-bootstrap
````
