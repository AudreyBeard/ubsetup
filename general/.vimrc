set tabstop=4
set expandtab
set number
set sw=4
set smartindent
" Carbonized color scheme
" For more hints, check https://github.com/nightsense/carbonized
"colorscheme carbonized-dark
"colorscheme distinguished

" Highlights overly long lines. Should be subtle so it doesn't distract too much
" Note that these colors don't match system colors, it seems to look up based on
"  some table. Since I changed system colors, it changes these
highlight OverLength ctermbg=black ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
