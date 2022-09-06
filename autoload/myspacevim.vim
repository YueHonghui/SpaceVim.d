function! myspacevim#before() abort
au FileType markdown setlocal wrap
set clipboard+=unnamedplus
set mmp=30000
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set foldmethod=syntax
set rtp+=~/.cache/vimfiles/repos/github.com/YueHonghui/markdown-preview.nvim
let g:go_gopls_options = ['-remote=127.0.0.1:19191']
let g:go_snippet_engine = ""
let g:coc_config_home = '~/.SpaceVim.d/'
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


function! myspacevim#after() abort 
  function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1] =~ '\s'
  endfunction

  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
  " remap for complete to use tab and <cr>
  inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
  inoremap <silent><expr> <c-space> coc#refresh()
  
  hi CocSearch ctermfg=12 guifg=#18A3FF
  hi CocMenuSel ctermbg=109 guibg=#13354A

endfunction
