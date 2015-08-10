let php_folding=1
let php_noShortTags=1

" Save folds when leaving window
autocmd BufWinLeave *.* mkview
" Load folds when entering window
autocmd BufWinEnter *.* silent loadview
