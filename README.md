# cv

## What is this?

My XeLaTeX CV.

You are free to use this template for your own CV. If you do, please let me know, I'd love to see it!
However, please do not use my personal information.

## Installation

Scripts are provided as-is. If you want to install on a different system, you're on your own. However, 
if you do, feel free to submit a pull request with your extra documentation and/or scripts.

### Install (Fedora 36)

```shell
sudo dnf install tex
sudo dnf install texlive-tabto-ltx-svn54080-55.fc36 \
    texlive-eurosym-svn17265.1.4_subrfix-55.fc36 \
    texlive-ucharclasses-svn58029-55.fc36 \
    texlive-fontawesome5-svn54517-55.fc36 -y
```

### Run

```shell
/bin/bash ./bin/generate.sh
```

## What it does

4 PDFs are generated:

* `./out/cv_en_anon.pdf` - English CV, anonymized
  * Then copied to `./Anonymous CV/English.pdf`
* `./out/cv_en_named.pdf` - English CV, with personal information
  * Then copied to `./PDF/CV Sam - YYYY MM DD.pdf`
  * Then copied to `./CV Samuel GIFFARD.pdf`
* `./out/cv_fr_anon.pdf` - French CV, anonymized
  * Then copied to `./Anonymous CV/Francais.pdf`
* `./out/cv_fr_named.pdf` - French CV, with personal information
  * Then copied to `CV Samuel GIFFARD.fr.pdf`

Therefore, the latest versions of my CV are always in 

* [`./CV Samuel GIFFARD.pdf`](./CV%20Samuel%20GIFFARD.pdf) and [`./CV Samuel GIFFARD.fr.pdf`](./CV%20Samuel%20GIFFARD.fr.pdf)
* [`./Anonymous CV/English.pdf`](./Anonymous%20CV/English.pdf) and [`./Anonymous CV/Francais.pdf`](./Anonymous%20CV/Francais.pdf)

Moreover, now it also archives the 4 PDFs in `./PDF/YYYY-MM-DD/`.