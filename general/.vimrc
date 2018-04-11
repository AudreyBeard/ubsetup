set tabstop=4
set expandtab
set number
set sw=4
set smartindent
" Carbonized color scheme
" For more hints, check https://github.com/nightsense/carbonized
"colorscheme carbonized-dark
"colorscheme distinguished

" Highlights overly long lines. Should be subtle so doesn't distract much
" With XTerm colors:
"  237 is charcoal, lighter than background
highlight OverLength ctermbg=237 ctermfg=white guibg=#592929
match OverLength /\%75v.\+/

" make folds easier to look at
:hi Folded ctermbg=black ctermfg=104

" Fold methods for different file types
autocmd BufRead *.cpp :set fdm=syntax
autocmd BufRead *.c :set fdm=syntax
autocmd BufRead *.py :set fdm=indent
