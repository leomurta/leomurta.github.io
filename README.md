# Website of prof. Leonardo Murta at Instituto de Computação (IC) / Universidade Federal Fluminense (UFF)

## Site Deployment

Site deployment is done automatically via Github Actions. Just a push with changes to the main branch triggers the action, and the site is regenerated and deployed at https://leomurta.github.io

## Other Info

### Compress pdf files

The following command compresses the pdf files in the site without relevant side effects on quality.

Requirements:
- Have Ghostscript installed
- Clone the project
- Be at the root of the project directory

```console
$ find . -type f -name "*.pdf" -exec bash -c 'gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -sOutputFile="output.pdf" "{}"; rm "{}"; mv "output.pdf" "{}"' \;
```

### Redirect access to https://leomurta.github.io

The following code shoud be added to a .htaccess file to redirect all access to https://leomurta.github.io.

```
RewriteEngine on
RewriteRule (.*) https://leomurta.github.io/$1 [R=301,L]
```
