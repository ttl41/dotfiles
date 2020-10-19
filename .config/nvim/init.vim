" Taking care of colors
set termguicolors
colorscheme gruvbox

" Setting fancy display
set number

" Disable useless backups
set nobackup
set nowritebackup
set noswapfile

" Increase undo levels
set undolevels=1000

" Plugins
call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()

" Keybindings
" " Reload init.vim
noremap <space>vr :so $MYVIMRC<CR>
" " Terminal 
tnoremap <Esc> <C-\><C-n>
noremap <space>vt :term<CR>
" " Windows
noremap <space>qs :split<CR>
noremap <space>qv :vsplit<CR>
noremap <space>qc :close<CR>
noremap <space>ql :wincmd l<CR>
noremap <space>qk :wincmd k<CR>
noremap <space>qj :wincmd j<CR>
noremap <space>qh :wincmd h<CR>
" " Buffers
noremap <space>bb :ls<CR>:b 
" " Files 
noremap <space>op :NERDTree<CR>
noremap <space>;; :edit 
