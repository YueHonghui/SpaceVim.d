au FileType markdown setlocal wrap
set clipboard+=unnamedplus
set mmp=30000
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set foldmethod=syntax
let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'options' : [ 
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}

