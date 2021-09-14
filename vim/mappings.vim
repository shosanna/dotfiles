" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

cnoremap %% <C-R>=expand('%:h').'/'<CR>

" For easier navigation between windows
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

" Switching between active files in a buffer.
nnoremap <leader><leader> <c-^>

" Open files with <leader>f
noremap <leader>f  :Files ./<CR>
" Open files, limited to the directory of the current files, with <leader>gf
noremap <leader>F  :FZF %%<CR>
noremap <leader>gf :GFiles ./<CR>
noremap <leader>gd :GFiles?<cr>

" Rails specific keystrokes
" noremap <leader>gr :topleft :split config/routes.rb<CR>
" noremap <leader>gg :topleft 50 :split Gemfile<CR>
" noremap <leader>gv :FZF app/views<cr>
" noremap <leader>gc :FZF app/controllers<cr>
" noremap <leader>gm :FZF app/models<cr>
" noremap <leader>gs :FZF app/services<cr>
" noremap <leader>gh :FZF app/helpers<cr>
" noremap <leader>gl :FZF lib<cr>
" noremap <leader>gk :FZF app/assets/stylesheets<cr>
" noremap <leader>gj :FZF app/assets/javascripts<cr>

noremap <leader>lt :!ctags --extra=+f --exclude=build --exclude=public --exclude=.mypy_cache --exclude=node_modules --exclude=.git -R *<CR>
nnoremap <leader>gt :Tags<cr>
nnoremap <leader>ga :Ag<cr>
nnoremap <leader>gd :Ag <C-r><C-w><cr>


nnoremap <CR> :nohlsearch<CR>/<BS>

nnoremap <leader>r :!rubocop %<cr>

" Distraction free plugin toggle
nnoremap <leader>d :Goyo<CR>

" Buffers!
nnoremap <leader>b :Buffers<CR>

" Vim Rspec bindings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>T :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

map <Leader>w :call VimuxRunCommand(input("prikaz> "))<CR>
map <Leader>q :call VimuxRunCommand(substitute(getline(line(".")),"^\\s*","",""))<CR>

nnoremap <Up> <C-w>5-
nnoremap <Down> <C-w>5+
nnoremap <Left> <C-w>5<
nnoremap <Right> <C-w>5>

nmap <F5> :VimuxRunCommand("make")<cr>
nmap <leader>e :VimuxRunCommand("make")<cr>

vmap <leader>css :sort<bar>:Align :\zs<CR>

autocmd FileType h,cc,c,cpp nnoremap <buffer><C-e> :<C-u>ClangFormat<CR>
autocmd FileType h,cc,c,cpp nnoremap <buffer><leader>ha :HeaderguardAdd<CR>
autocmd FileType h,cc,c,cpp vnoremap <buffer><C-e> :ClangFormat<CR>
