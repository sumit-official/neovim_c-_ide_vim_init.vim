# neovim_c/c++_ide_vim_init.vim
This init.vim file can be used to turn your neovim like a ide for c++ development

vim is a ide that can make your work-flow better but setting it up is not easy this is why this repo is game to setup vim for c/c++ programing 
vim is great for competivite programming but with this setup you could use its like VScode(well there is still some differcences but its better than plan vim)

# Requirement
* neovim (the better version of vim) you can get neovim from here https://github.com/neovim/neovim
* vim-plug(this is to install plugins) you can get it from here https://github.com/junegunn/vim-plug
* You must locate you init.vim file if you didnt set it up you can do the following:-
      * cd ~/.config/nvim/ and the touch init.vim
* Go in there and paste the following:-<br />
___________________________________________________________________________________________________________________
      call plug#begin()<br />
      Plug 'preservim/nerdtree'<br />
      Plug 'neoclide/coc.nvim'<br />
      Plug 'dracula/vim'<br />
      Plug 'zchee/deoplete-jedi'<br />
      call plug#end()<br />
___________________________________________________________________________________________________________________
     now all these are plugins to make your nvim better. You can read more about them in detail over here<br />
     https://github.com/preservim/nerdtree<br />
     https://github.com/neoclide/coc.nvim<br />
     https://github.com/dracula/vim<br />
     https://github.com/deoplete-plugins/deoplete-jedi<br />
* Before you go ahead you most have nodejs and clangd for c/c++ auto complete to work so go on write :w and then :source % and :wq
if by chance you dont have nodejs you can easliy install in by sudo apt install nodejs for ubuntu
if you dont have clangd then you can install it following this guide https://clangd.llvm.org/installation.html<br />
* After that you can just write :CocInstall coc-clangd and you c++\c should be working after you :w and :source % again<br />
* Now you can copy and paste the remaining lines<br />
_______________________________________________________________________________________________________________________
if(has("termguicolors"))<br />
        set termguicolors<br />
endif<br />
syntax enable<br />
colorscheme dracula<br />
set number<br />
set relativenumber<br />

" use <tab> for trigger completion and navigate to the next complete item<br />
" function! s:check_back_space() abort<br />
"   let col = col('.') - 1<br />
"     return !col || getline('.')[col - 1]  =~ '\s'<br />
"     endfunction<br />
"<br />
"     inoremap <silent><expr> <Tab><br />
"           \ pumvisible() ? "\<C-n>" :
"                 \ <SID>check_back_space() ? "\<Tab>" :<br />
"                       \ coc#refresh()<br />
     <br />
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" set mouse=a<br />
let g:NERDTreeMouseMkde=3<br />

set listchars=tab:\|\<br />
set list<br />
set noswapfile<br />
set incsearch<br />
set noswapfile<br />
set nobackup<br />

set foldmethod=syntax<br />
set foldlevel=1<br />
set foldlevelstart=1<br />
set nofoldenable<br />

set mouse=a<br />
let g:NERDTreeMouseMode=3<br />

let mapleader = ","<br />
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"<br />
nnoremap <leader>h :wincmd h<CR><br />
nnoremap <leader>j :wincmd j<CR><br />
nnoremap <leader>k :wincmd k<CR><br />
nnoremap <leader>l :wincmd l<CR><br />
nnoremap <leader>n :NERDTreeToggle<CR><br />
set winheight=38<br />
nnoremap <leader>t :wincmd b\| bel terminal<CR><br />
__________________________________________________________________________________________________________________________
  
 these lines give to a better vim experince you could easly change things like you leader key is you want by defalt in <br />these you new leader key = ","
 know if you :w :source :wq
 and open a c\c++ file with the .c or .cpp extension your auto complete most be working if everthing has be done right<br />
 # This is what you neovim should look like
 
 ![](image/Screenshot.png)
