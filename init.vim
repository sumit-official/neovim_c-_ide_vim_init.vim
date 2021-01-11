call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'dracula/vim'
Plug 'zchee/deoplete-jedi'
call plug#end()

if(has("termguicolors"))
        set termguicolors
endif
syntax enable
colorscheme dracula
set number
set relativenumber

" use <tab> for trigger completion and navigate to the next complete item
" function! s:check_back_space() abort
"   let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
"     endfunction
"
"     inoremap <silent><expr> <Tab>
"           \ pumvisible() ? "\<C-n>" :
"                 \ <SID>check_back_space() ? "\<Tab>" :
"                       \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" set mouse=a
let g:NERDTreeMouseMkde=3

set listchars=tab:\|\
set list
set noswapfile
set incsearch
set noswapfile
set nobackup

set foldmethod=syntax
set foldlevel=1
set foldlevelstart=1
set nofoldenable

set mouse=a
let g:NERDTreeMouseMode=3

let mapleader = ","
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
set winheight=38
nnoremap <leader>t :wincmd b\| bel terminal<CR>