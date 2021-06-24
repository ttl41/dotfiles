let mapleader = "\<Space>"

" Vim things
noremap <Leader>vr :so $MYVIMRC<CR>
noremap <Leader>ve :edit $MYVIMRC<CR>
noremap <Leader>vn :set relativenumber!<CR>
tnoremap <Esc> <C-\><C-n>
noremap <Leader>vt :term<CR>

" Window management
noremap <Leader>w <C-w>
noremap <Leader>cc <C-w>c
noremap <Leader>j <C-w>j
noremap <Leader>k <C-w>k
noremap <Leader>l <C-w>l
noremap <Leader>h <C-w>h

" painless code execution! 
" i like the coc
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <C-p> <C-^>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
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
