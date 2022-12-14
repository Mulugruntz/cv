@echo off
setlocal

for %%I in ("%~dp0\..") do set "rootdir=%%~fI"

set TEXINPUTS=".;%rootdir%\tex;%TEXINPUTS%"
set LATEXCOMPILER="D:\MiKTeX\miktex\bin\x64\xelatex.exe"
set CURRENT_DATE=%date:~6,4% %date:~3,2% %date:~0,2%
set CURRENT_DATE_HYPHENS=%date:~6,4%-%date:~3,2%-%date:~0,2%
set CV_FILENAME=CV Sam - %CURRENT_DATE%.pdf

%LATEXCOMPILER% -max-print-line=120 -interaction=nonstopmode -output-directory=%rootdir%\out tex\cv_en_named.tex
%LATEXCOMPILER% -max-print-line=120 -interaction=nonstopmode -output-directory=%rootdir%\out tex\cv_en_anon.tex
%LATEXCOMPILER% -max-print-line=120 -interaction=nonstopmode -output-directory=%rootdir%\out tex\cv_fr_named.tex
%LATEXCOMPILER% -max-print-line=120 -interaction=nonstopmode -output-directory=%rootdir%\out tex\cv_fr_anon.tex

COPY "%rootdir%\out\cv_en_named.pdf" "PDF\%CV_FILENAME%"
COPY "%rootdir%\out\cv_en_named.pdf" "CV Samuel GIFFARD.pdf"
COPY "%rootdir%\out\cv_fr_named.pdf" "CV Samuel GIFFARD.fr.pdf"
COPY "%rootdir%\out\cv_en_named.pdf" "Anonymous CV\English.pdf"
COPY "%rootdir%\out\cv_fr_named.pdf" "Anonymous CV\Francais.pdf"

MD "%rootdir%\PDF\%CURRENT_DATE_HYPHENS%\Anonymous CV"
COPY "%rootdir%\out\cv_en_named.pdf" "PDF\%CURRENT_DATE_HYPHENS%\CV Samuel GIFFARD.pdf"
COPY "%rootdir%\out\cv_fr_named.pdf" "PDF\%CURRENT_DATE_HYPHENS%\CV Samuel GIFFARD.fr.pdf"
COPY "%rootdir%\out\cv_en_anon.pdf" "PDF\%CURRENT_DATE_HYPHENS%\Anonymous CV\English.pdf"
COPY "%rootdir%\out\cv_fr_anon.pdf" "PDF\%CURRENT_DATE_HYPHENS%\Anonymous CV\Francais.pdf"
