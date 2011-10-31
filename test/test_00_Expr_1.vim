source ../autoload/viml.vim
source ./test.vim
let testname = expand('<sfile>:r')
echo "testname: " . testname
let testfunc = 'Test' . matchstr(testname, '\d\+_\zs[^_]\+')
echo "testfunc: " . testfunc
exe "edit " . testname . '.in'
echo "%s/.*/\\=" . testfunc . "(submatch(0))/"
exe "%s/.*/\\=" . testfunc . "(submatch(0))/"
exe "write " . testname . ".out"
quit!
