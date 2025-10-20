# Use lualatex by default
$pdf_mode = 4;
$lualatex = 'lualatex %O -synctex=1 -interaction=nonstopmode -file-line-error %S';

# Workaround for luaotfload issue - use shell escape
$ENV{'TEXINPUTS'} = './/:' . ($ENV{'TEXINPUTS'} || '');
$ENV{'LUAINPUTS'} = 'E:/apps/mitek/tex/luatex///:' . ($ENV{'LUAINPUTS'} || '');
