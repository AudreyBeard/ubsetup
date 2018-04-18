"""""""""""""""""""""""""""""""
"          Behavior           "
"""""""""""""""""""""""""""""""
set tabstop=4                       " Tab is width of four chars
set expandtab                       " Tab becomes spaces
set number                          " Line numbers
"set nonumber                        " Line numbers
set sw=4                            " Python indentation
set smartindent                     " Indents smartly
set showmatch                       " highlight matching brackets

autocmd BufRead *.cpp :set fdm=syntax   " C/C++ folding
autocmd BufRead *.c :set fdm=syntax     " 
autocmd BufRead *.py :set fdm=indent    " Python folding


"""""""""""""""""""""""""""""""
"         Appearance          "
"""""""""""""""""""""""""""""""
hi linenr       ctermbg=none ctermfg=7     " Line numbers
hi Visual       ctermbg=8 ctermfg=11    " Visual selection 
hi Folded       ctermbg=none ctermfg=15     " Folds
hi OverLength   ctermbg=0 ctermfg=8     " Overly long lines 
match OverLength /\%73v.\+/         "


"""""""""""""""""""""""""""""""
"          Interface          "
"""""""""""""""""""""""""""""""
set whichwrap=<,>,h,l           " Cursor wraps around
set hlsearch                    " hilight search results
set incsearch                   " hilight search results in realtime
set ignorecase                  " Ignore cases when searching
set smartcase                   " Don't ignore cases when capitalize

" Easy window navigation when using viewports
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use \c to comile (in place file lives) and \v to view in mupdf
nnoremap <leader>c :w<CR>:!rubber --inplace --pdf --warn all %<CR>
nnoremap <leader>v :!mupdf %:r.pdf &<CR><CR>

" Pressing RETURN toggles search highlighting
noremap <CR> :set hlsearch! hlsearch?<CR><CR> 


"""""""""""""""""""""""""""""""
"         Status Line         "
"""""""""""""""""""""""""""""""

set laststatus=2                  " Show file name at bottom
set statusline+=%F                " Also show path in status line
set statusline+=%=                " right align
set statusline+=%10((%l,\ %c)%)   " Line, colum
set statusline+=\ \-\-\           " Separator
set statusline+=%P                " Percent

highlight statusline ctermbg=none ctermfg=7 cterm=bold

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    "               Term bg     Cyan
    hi statusline ctermbg=none ctermfg=6 cterm=bold
  elseif a:mode == 'r'
    hi statusline ctermbg=none ctermfg=1 cterm=bold
  else
    hi statusline ctermbg=none ctermfg=6 cterm=bold
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermbg=none ctermfg=7 cterm=bold


