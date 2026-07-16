$pdf_mode = 1;       # use pdflatex
$emulate_aux = 1;    # TeX Live's pdflatex has no -aux-directory; let latexmk emulate it
$aux_dir = '!build'; # all auxiliary files go here
$fls_uses_aux_dir = 1; # .fls recorder file too (latexmk >= 4.77)
# fallback for latexmk <= 4.76, which always puts the .fls in out_dir:
END { rename('main.fls', '!build/main.fls') if -f 'main.fls'; }
$out_dir = '.';      # PDF (+ synctex) stays in project root
