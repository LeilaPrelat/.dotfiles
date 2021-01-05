set number
syntax on
set encoding=UTF-8
set noswapfile

"set noswapfile: dont create swap files when forget to save changes

""""""""""""""""""""""""""""""""

call plug#begin()

"Plug for tree-view
Plug 'scrooloose/nerdtree'

"Plug for git
Plug 'tpope/vim-fugitive'

"Plug for latex: 
"1 - set conceal is for made visible symbols of latex when the
"cursor is not in the line
"2 - cambie el tex_flavor de latex por latexmk 

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'lervag/vimtex'
let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'options' : [ 
        \   '-pdflatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}

"let g:tex_flavor='latexmk'
let g:vimtex_view_method='zathura'
"let g:vimtex_quickfix_mode=1
set conceallevel=1

"conceal symbols in LaTeX
"let g:tex_conceal='abdmg'


" Can hide specifc warning messages from the quickfix window
" Quickfix with Neovim is broken or something
" https://github.com/lervag/vimtex/issues/773
let g:vimtex_quickfix_latexlog = {
            \ 'default' : 1,
            \ 'fix_paths' : 0,
            \ 'general' : 1,
            \ 'references' : 1,
            \ 'overfull' : 1,
            \ 'underfull' : 1,
            \ 'font' : 1,
            \ 'packages' : {
            \   'default' : 1,
            \   'natbib' : 1,
            \   'biblatex' : 1,
            \   'babel' : 1,
            \   'hyperref' : 1,
            \   'scrreprt' : 1,
            \   'fixltx2e' : 1,
            \   'titlesec' : 1,
            \ },
            \}

"Error for ultisnips and python3 in the latest version of nvim
"Plug 'sirver/ultisnips'
"let g:UltiSnipsExpandTrigger = '<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"Plug for autocomplete for nvim : mucomplete

Plug 'lifepillar/vim-mucomplete'
set completeopt+=menuone
set completeopt-=preview
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion

let g:jedi#popup_on_dot = 0  " It may be 1 as well
set completeopt+=longest,menuone,noselect
let g:mucomplete#enable_auto_at_startup = 0 "Press tab for show options for complete
let g:mucomplete#completion_delay = 1

"Plug for syntax
Plug 'tpope/vim-markdown'

call plug#end()


""""""""""""""""""""""""""""""""""""
"Press ctrl + n instead of :NERDTree
map <C-n> :NERDTree


"Press ctrl + i instead of :VimtexTocToggle (show table of content)

map <C-i> :VimtexTocToggle


