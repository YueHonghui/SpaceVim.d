function! myspacevim#before()
au FileType markdown setlocal wrap
set clipboard+=unnamedplus
set mmp=30000
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set foldmethod=syntax
set rtp+=~/.cache/vimfiles/repos/github.com/YueHonghui/markdown-preview.nvim
let g:go_gopls_options = ['-remote', '127.0.0.1:19191']
let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:vim_json_syntax_conceal = 0
let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'options' : [ 
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
endfunction
