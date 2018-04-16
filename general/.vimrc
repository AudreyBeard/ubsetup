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

" Pressing RETURN toggles search highlighting
noremap <CR> :set hlsearch! hlsearch?<CR><CR> 

autocmd BufRead *.cpp :set fdm=syntax   " C/C++ folding
autocmd BufRead *.c :set fdm=syntax     " 
autocmd BufRead *.py :set fdm=indent    " Python folding


"""""""""""""""""""""""""""""""
"         Appearance          "
"""""""""""""""""""""""""""""""
hi linenr       ctermbg=0 ctermfg=8     " Line numbers
hi Visual       ctermbg=8 ctermfg=11    " Visual selection 
hi Folded       ctermbg=0 ctermfg=7     " Folds
hi OverLength   ctermbg=0 ctermfg=8     " Overly long lines 
match OverLength /\%74v.\+/         "


"""""""""""""""""""""""""""""""
"          Interface          "
"""""""""""""""""""""""""""""""
set whichwrap=<,>,h,l             " Cursor wraps around
set hlsearch                      " hilight search results
set incsearch                     " hilight search results in realtime


"""""""""""""""""""""""""""""""
"         Status Line         "
"""""""""""""""""""""""""""""""

set laststatus=2                  " Show file name at bottom
set statusline+=%F                " Also show path in status line
set statusline+=%=                " right align
set statusline+=%10((%l,\ %c)%)   " Line, colum
set statusline+=\ \-\-\           " Separator
set statusline+=%P                " Percent


"--- Behavior on insertion
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    "               Term bg     Cyan
    hi statusline ctermbg=0 ctermfg=6 cterm=bold
  elseif a:mode == 'r'
    hi statusline ctermbg=0 ctermfg=1 cterm=bold
  else
    hi statusline ctermbg=0 ctermfg=6 cterm=bold
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermbg=0 ctermfg=8 cterm=bold

highlight statusline ctermbg=0 ctermfg=8 cterm=bold

