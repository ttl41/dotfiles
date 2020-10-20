let g:startify_custom_header  = [
\ '    888888ba                             oo            ',
\ '    88     8b                                          ',
\ '    88     88 .d8888b. .d8888b. dP   .dP dP 88d8b.d8b. ',
\ '    88     88 88ooood8 88    88 88   d8  88 88 `88  88 ',
\ '    88     88 88.  ... 88.  .88 88 .88   88 88  88  88 ',
\ '    dP     dP  88888P  `88888P  8888P    dP dP  dP  dP ',
\'',
\ ]

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

" Setting a nice start screen
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   Recent Files']            },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]

" Plugins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ThePrimeagen/vim-be-good'
Plug 'mhinz/vim-startify'
call plug#end()

" Keybindings
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
" " Buffers
noremap <Leader>bb :ls<CR>:b 
" " Files 
noremap <Leader>op :NERDTree<CR>
noremap <Leader>;; :edit 
