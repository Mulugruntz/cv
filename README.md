# cv

## What is this?

My XeLaTeX CV.

You are free to use this template for your own CV. If you do, please let me know, I'd love to see it!
However, please do not use my personal information.

## Installation

Scripts are provided as-is. If you want to install on a different system, you're on your own. However, 
if you do, feel free to submit a pull request with your extra documentation and/or scripts.

### Install (Fedora)

```shell
sudo dnf install tex
sudo dnf install texlive-tabto-ltx \
    texlive-eurosym \
    texlive-ucharclasses \
    texlive-fontawesome5 -y
sudo dnf install gdouros-symbola-fonts
```

### Install (macOS)

```shell
brew install --cask mactex
echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zshrc
source ~/.zshrc
sudo tlmgr update --self
sudo tlmgr install tabto-ltx eurosym ucharclasses fontawesome5
```

Might need to install the fonts `Symbola` and `DejaVu Sans`:
```shell
curl -LO https://dn-works.com/wp-content/uploads/2020/UFAS-Fonts/Symbola.zip && \
mkdir symbola_tmp && \
unzip Symbola.zip -d symbola_tmp && \
cp symbola_tmp/Symbola.otf ~/Library/Fonts/ && \
rm -rf symbola_tmp Symbola.zip
echo "Symbola font has been successfully installed."
curl -LO "https://downloads.sourceforge.net/project/dejavu/dejavu/2.37/dejavu-fonts-ttf-2.37.zip" && \
mkdir dejavu_tmp && \
unzip dejavu-fonts-ttf-2.37.zip -d dejavu_tmp && \
cp dejavu_tmp/dejavu-fonts-ttf-2.37/ttf/DejaVuSans*.ttf ~/Library/Fonts/ && \
rm -rf dejavu_tmp dejavu-fonts-ttf-2.37.zip
echo "DejaVu Sans font has been successfully installed."
fc-cache -fv
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