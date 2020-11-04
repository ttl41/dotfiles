if exists('g:vscode')
" Plugins
call plug#begin()
Plug 'jiangmiao/auto-pairs'
call plug#end()
" Big Undo
set undolevels=1000
" Change indentation settings 
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
" Disable useless backups
set nobackup
set nowritebackup
set noswapfile
else


" Actual Vim settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Taking care of colors
set termguicolors
colorscheme gruvbox

" Setting fancy display
set number
set relativenumber

" Disable useless backups
set nobackup
set nowritebackup
set noswapfile

" Increase undo levels
set undolevels=1000

" Change indentation settings 
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4

" Debugging saves the day
autocmd VimEnter * packadd termdebug
"
" Disable annoying thing
set completeopt-=preview

" Disabled useless nerdtree thingy + pretty
let NERDTreeMinimalUI = 1
let NERDTreeDirArrow = 1

" Plugins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ThePrimeagen/vim-be-good'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()

" Keybindings / Stuff
" " Leader key
let mapleader = "\<Space>"
" " init.vim stuff
noremap <Leader>vr :so $MYVIMRC<CR>
noremap <Leader>ve :edit $MYVIMRC<CR>
" " Misc
noremap <Leader>vn :set relativenumber!<CR>
" " Terminal 
tnoremap <Esc> <C-\><C-n>
noremap <Leader>vt :term<CR>
" " Windows
noremap <Leader>w <C-w>
noremap <Leader>j <C-w>j
noremap <Leader>k <C-w>k
noremap <Leader>l <C-w>l
noremap <Leader>h <C-w>h
" " Tabs
noremap <Leader>to :tabnew<CR>
noremap <Leader>tO :-tabnew<CR>
noremap <Leader>tt :tabnext<CR>
noremap <Leader>tr :tabnext -<CR>
noremap <Leader>tl :$tabnext <CR>
noremap <Leader>tc :tabclose<CR>
" " YCM
noremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
noremap <silent> <Leader>gf :YcmCompleter FixIt<CR> 
" " Termdebug
noremap <Leader>dd :Break<CR>
noremap <Leader>dc :Clear<CR>
noremap <Leader>dt :Termdebug 
" " Buffers
noremap <Leader>bb :ls<CR>:b 
" " Files 
noremap <Leader>op :NERDTreeToggle<CR>
noremap <Leader>;; :edit 
" " No folding
let g:vim_markdown_folding_disabled = 1
" " Goyo + limelight
noremap <Leader>ll :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" " Retarded Azerty remaps
nnoremap ù %
endif
