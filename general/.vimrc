set tabstop=4                     " Tab is width of four chars
set expandtab                     " Tab becomes spaces
set number                      " Line numbers
"set nonumber                      " Line numbers
set sw=4                          " Python indentation
set smartindent                   " Indents smartly
set whichwrap=<,>,h,l             " Cursor wraps around
set showmatch                     " highlight matching brackets
set hlsearch                      " hilight search results
set incsearch                     " hilight search results in realtime

"                 term bg     light grey
highlight linenr ctermbg=235 ctermfg=241

"--- Status line config
set laststatus=2                  " Show file name at bottom
set statusline+=%F                " Also show path in status line
set statusline+=%=                " right align
set statusline+=%10((%l,\ %c)%)\  " Line, colum
set statusline+=\ \-\-\     " Separator
set statusline+=%P          " Percent

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    "               Term bg     Cyan
    hi statusline ctermfg=235 ctermbg=6
  elseif a:mode == 'r'
    hi statusline ctermfg=235 ctermbg=0
  else
    hi statusline ctermfg=235 ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
"                                 Yellow    Term bg
au InsertLeave * hi statusline ctermfg=235 ctermbg=241

" Default           Line          Text      
"                   Term bg      light grey    
highlight statusline ctermfg=235 ctermbg=241
"---

" Carbonized color scheme
" For more hints, check https://github.com/nightsense/carbonized
"colorscheme carbonized-dark
"colorscheme distinguished

" Highlights overly long lines. Should be subtle so doesn't distract much
" With XTerm colors:
"  237 is charcoal, lighter than background
highlight OverLength ctermbg=235 ctermfg=241 
match OverLength /\%74v.\+/

" make folds easier to look at
:hi Folded ctermbg=black ctermfg=104

" Fold methods for different file types
autocmd BufRead *.cpp :set fdm=syntax
autocmd BufRead *.c :set fdm=syntax
autocmd BufRead *.py :set fdm=indent
