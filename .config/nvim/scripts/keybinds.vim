let mapleader = "\<Space>"

" Vim things
noremap <Leader>vr :so $MYVIMRC<CR>
noremap <Leader>ve :edit $MYVIMRC<CR>
noremap <Leader>vn :set relativenumber!<CR>
tnoremap <Esc> <C-\><C-n>
noremap <Leader>vt :term<CR>

" Window management
noremap <Leader>cc <C-w>c
noremap <Leader>w <C-w>

" painless code execution! 
" i like the coc
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
  " remap for complete to use tab and <cr>
  inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
  inoremap <silent><expr> <c-space> coc#refresh()


nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <C-p> <C-^>
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" latex
noremap <Leader>lx :LLPStartPreview<CR>

" Searching Files
noremap <Leader>bb :Buffers<CR> 
noremap <Leader>op :NERDTreeToggle<CR>
nnoremap <leader>gf :GFiles<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>rg :Rg<CR>

" goyo
noremap <Leader>gg :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nnoremap ù %
