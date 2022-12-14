# exit on error
set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
TODAY=$(date -u '+%Y %m %d')
TODAY_HYPHENS=$(date -u '+%Y-%m-%d')

echo "Root directory defined as $ROOT_DIR"
mkdir -p "$ROOT_DIR/out"

TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_en_named.tex
TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_en_anon.tex
TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_fr_named.tex
TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_fr_anon.tex

cp "$ROOT_DIR/out/cv_en_named.pdf" "PDF/CV Sam - $TODAY.pdf"
cp "$ROOT_DIR/out/cv_en_named.pdf" "CV Samuel GIFFARD.pdf"
cp "$ROOT_DIR/out/cv_fr_named.pdf" "CV Samuel GIFFARD.fr.pdf"
cp "$ROOT_DIR/out/cv_en_anon.pdf" "Anonymous CV/English.pdf"
cp "$ROOT_DIR/out/cv_fr_anon.pdf" "Anonymous CV/Francais.pdf"

mkdir -p "$ROOT_DIR/PDF/$TODAY_HYPHENS/Anonymous CV/"
cp "$ROOT_DIR/out/cv_en_named.pdf" "PDF/$TODAY_HYPHENS/CV Samuel GIFFARD.pdf"
cp "$ROOT_DIR/out/cv_fr_named.pdf" "PDF/$TODAY_HYPHENS/CV Samuel GIFFARD.fr.pdf"
cp "$ROOT_DIR/out/cv_en_anon.pdf" "PDF/$TODAY_HYPHENS/Anonymous CV/English.pdf"
cp "$ROOT_DIR/out/cv_fr_anon.pdf" "PDF/$TODAY_HYPHENS/Anonymous CV/Francais.pdf"
