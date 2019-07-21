" set color scheme
:color slate

" centralize backups, swapfiles, and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" enable detection for filetype, filetype plugins, filetype indent
filetype plugin indent on

" show display tabs with 4 spaces
set tabstop=4

" when indenting with '>', use 4 spaces
set shiftwidth=4

" pressing tab inserts 4 spaces
set expandtab

" enable syntax highlighting
syntax on

" enable light numbers
set number

" show 'invisible characters'
set list
set lcs=tab:▸\ ,trail:·,nbsp:_

" highlight searches
set hlsearch

" highlight dynamically as pattern is typed
set incsearch


" always show status line
set laststatus=2


" enable mouse in all modes
set mouse=a

" show filename in titlebar
set title

" strip trailing whitespace
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
