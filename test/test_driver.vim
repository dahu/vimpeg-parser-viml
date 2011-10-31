" Generic driver for all runVimTests
" Point your actual .vim files at this driver
" Name your test files as: test_##_<elem>_# files
" where: <elem> is a valid non-terminal in the associated vimpeg grammar

"NOTE to Raimondi: We could generate this file later - there are only two
"project-specific lines (the source and the reference to g:<proj>#parser)

source ../autoload/viml.vim
let testname = expand('<sfile>:p:t:r')
let testexpr = matchstr(testname, '^test_\d\+_\zs[^_]\+')
exe "edit " . testname . '.in'
exe "%s/.*/\\=string(g:viml#parser.GetSym(testexpr).match(submatch(0))['is_matched'])/"
exe "write " . testname . ".out"
quit!
