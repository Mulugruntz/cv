ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_en_named.tex
TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_en_anon.tex
TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_fr_named.tex
TEXINPUTS=".:$ROOT_DIR/tex:$TEXINPUTS" xelatex -max-print-line=120 -interaction=nonstopmode -output-directory=$ROOT_DIR/out tex/cv_fr_anon.tex

cp "$ROOT_DIR/out/cv_en_named.pdf" "PDF/CV Sam - `date +%Y %m %d`.pdf"
cp "$ROOT_DIR/out/cv_en_named.pdf" "CV Samuel GIFFARD.pdf"
cp "$ROOT_DIR/out/cv_fr_named.pdf" "CV Samuel GIFFARD.fr.pdf"
cp "$ROOT_DIR/out/cv_en_named.pdf" "Anonymous CV/English.pdf"
cp "$ROOT_DIR/out/cv_fr_named.pdf" "Anonymous CV/Francais.pdf"
