# man latexmk

$pdf_mode = 5;

# -file-line-error 使报错输出文件和行号
# -halt-on-error 和 -interaction=nonstopmode 使编译遇到错误时立即停止
# -synctex=1 开启 synctex 功能
# xelatex 的 -no-pdf 参数使编译时只生成 xdv 文件, 最后才用 xdvipdfmx 生成 pdf
# 这样可以节省嵌入图片耗费的时间
$xelatex = "xelatex -file-line-error --shell-escape -src-specials -synctex=0 -interaction=batchmode %O %S;cp %D %R.pdf";
#$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";

$recorder = 1;

#$pdf_previewer = "SumatraPDF -reuse-instance -inverse-search -a %O %S";
$pdf_previewer = "zathura %S";

# 连续编译模式
#$preview_continuous_mode = 1;

# 编译完成自动打开 pdf
$preview_mode = 1;

$pdf_update_method = 0;

# 指定要清除临时文件的后缀
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx ilg ind ist lof log lot out run.xml toc dvi";

$bibtex_use = 2;

#$out_dir = "temp";
# 指定生成PDF文件的文件名，可以与LaTeX主文件名不一致
#$jobname = "Book";

# 编译
# latexmk 会根据情况，自动执行多次编译。编译完成后不退出，
# 处于等待状态，监视源文件。一旦有更新，会实时编译，并刷新PDF阅读器
# （要求阅读器支持，如skim）。编译生成的文件都会输出到$out_dir指定的目录。
# 但是，将最终的PDF文件复制到当前目录
#latexmk main.tex

# 清除临时文件
#latexmk -c
