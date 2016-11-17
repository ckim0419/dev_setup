" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" QuickFix
map <F5> :cope<CR>

" Tagbar
map <F8> :TagbarToggle<CR>

" flake8-vim
let g:PyFlakeMaxLineLength = 120
let g:PyFlakeForcePyVersion = 2
map <F7> :PyFlakeAuto<CR>


" F2 NERDTree
map <F2> :NERDTreeTabsToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '.egg-info', '__pycache__', 'env/']
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0

" Tab navigation
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap te :tabedit<Space>

" Buffer Navigation
nnoremap bh :bp<CR>
nnoremap bl :bn<CR>

" vim git
map <F9> :Gblame<CR>

" Anything Else
set number
set cursorline
colorscheme molokai

" Prefer 2 space indentation
set ts=2 sw=2 softtabstop=2 expandtab ai

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <leader>d :YcmCompleter GoTo<CR>
