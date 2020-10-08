let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'snippets-expand', 1)
inoremap <silent> <Plug>CocRefresh =coc#_complete()
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
imap <C-_>9 <Plug>TComment_9
imap <C-_>8 <Plug>TComment_8
imap <C-_>7 <Plug>TComment_7
imap <C-_>6 <Plug>TComment_6
imap <C-_>5 <Plug>TComment_5
imap <C-_>4 <Plug>TComment_4
imap <C-_>3 <Plug>TComment_3
imap <C-_>2 <Plug>TComment_2
imap <C-_>1 <Plug>TComment_1
imap <C-_>s <Plug>TComment_s
imap <C-_>n <Plug>TComment_n
imap <C-_>a <Plug>TComment_a
imap <C-_>b <Plug>TComment_b
imap <C-_>i <Plug>TComment_i
imap <C-_>r <Plug>TComment_r
imap <C-_>  <Plug>TComment_ 
imap <C-_>p <Plug>TComment_p
imap <C-_><C-_> <Plug>TComment_
inoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_<C-_>s :TCommentAs =&ft_
inoremap <Plug>TComment_s :TCommentAs =&ft_
inoremap <Plug>TComment_<C-_>n :TCommentAs =&ft 
inoremap <Plug>TComment_n :TCommentAs =&ft 
inoremap <Plug>TComment_<C-_>a :TCommentAs 
inoremap <Plug>TComment_a :TCommentAs 
inoremap <Plug>TComment_<C-_>b :TCommentBlock mode=#
inoremap <Plug>TComment_b :TCommentBlock mode=#
inoremap <Plug>TComment_<C-_>i v:TCommentInline mode=#
inoremap <Plug>TComment_i v:TCommentInline mode=#
inoremap <Plug>TComment_<C-_>r :TCommentRight
inoremap <Plug>TComment_r :TCommentRight
inoremap <Plug>TComment_<C-_>  :TComment 
inoremap <Plug>TComment_  :TComment 
inoremap <Plug>TComment_<C-_>p :norm! m`vip:TComment``
inoremap <Plug>TComment_p :norm! m`vip:TComment``
inoremap <Plug>TComment_<C-_><C-_> :TComment
inoremap <Plug>TComment_ :TComment
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
imap <C-J> <Plug>(coc-snippets-expand-jump)
imap <C-L> <Plug>(coc-snippets-expand)
inoremap <silent> <expr> <C-Space> coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
inoremap <F8> :set keymap=
inoremap <F7> :set keymap=czech
nnoremap <silent>  :TmuxNavigateLeft
vmap <NL> <Plug>(coc-snippets-select)
nnoremap <silent> <NL> :TmuxNavigateDown
nnoremap <silent>  :TmuxNavigateUp
nnoremap <silent>  :TmuxNavigateRight
nnoremap  :nohlsearch/<BS>
nnoremap <silent>  :TmuxNavigatePrevious
vmap 9 <Plug>TComment_9
nmap 9 <Plug>TComment_9
omap 9 <Plug>TComment_9
vmap 8 <Plug>TComment_8
nmap 8 <Plug>TComment_8
omap 8 <Plug>TComment_8
vmap 7 <Plug>TComment_7
nmap 7 <Plug>TComment_7
omap 7 <Plug>TComment_7
vmap 6 <Plug>TComment_6
nmap 6 <Plug>TComment_6
omap 6 <Plug>TComment_6
vmap 5 <Plug>TComment_5
nmap 5 <Plug>TComment_5
omap 5 <Plug>TComment_5
vmap 4 <Plug>TComment_4
nmap 4 <Plug>TComment_4
omap 4 <Plug>TComment_4
vmap 3 <Plug>TComment_3
nmap 3 <Plug>TComment_3
omap 3 <Plug>TComment_3
vmap 2 <Plug>TComment_2
nmap 2 <Plug>TComment_2
omap 2 <Plug>TComment_2
vmap 1 <Plug>TComment_1
nmap 1 <Plug>TComment_1
omap 1 <Plug>TComment_1
map ca <Plug>TComment_ca
map cc <Plug>TComment_cc
map s <Plug>TComment_s
map n <Plug>TComment_n
map a <Plug>TComment_a
map b <Plug>TComment_b
map i <Plug>TComment_i
map r <Plug>TComment_r
map   <Plug>TComment_ 
map p <Plug>TComment_p
vmap  <Plug>TComment_
nmap  <Plug>TComment_
omap  <Plug>TComment_
nnoremap <silent>  p :CocListResume
nnoremap <silent>  k :CocPrev
nnoremap <silent>  j :CocNext
nnoremap <silent>  s :CocList -I symbols
nnoremap <silent>  o :CocList outline
nnoremap <silent>  c :CocList commands
nnoremap <silent>  e :CocList extensions
nnoremap <silent>  a :CocList diagnostics
map ,_s <Plug>TComment_,_s
map ,_n <Plug>TComment_,_n
map ,_a <Plug>TComment_,_a
map ,_b <Plug>TComment_,_b
map ,_r <Plug>TComment_,_r
xmap ,_i <Plug>TComment_,_i
map ,_  <Plug>TComment_,_ 
map ,_p <Plug>TComment_,_p
xmap ,__ <Plug>TComment_,__
nmap ,__ <Plug>TComment_,__
smap ,__ <Plug>TComment_,__
omap ,__ <Plug>TComment_,__
nmap ,p <Plug>(Prettier)
nmap ,qf <Plug>(coc-fix-current)
nmap ,ac <Plug>(coc-codeaction)
nmap ,a <Plug>(coc-codeaction-selected)
xmap ,a <Plug>(coc-codeaction-selected)
nmap ,rn <Plug>(coc-rename)
vmap ,css :sort|:Align :\zs
nmap ,e :VimuxRunCommand("make")
map ,q :call VimuxRunCommand(substitute(getline(line(".")),"^\\s*","",""))
map ,w :call VimuxRunCommand(input("prikaz> "))
nnoremap ,b :Buffers
nnoremap ,d :Goyo
nnoremap ,r :!rubocop %
nnoremap ,gd :Ag 
nnoremap ,ga :Ag
nnoremap ,gt :Tags
noremap ,lt :!ctags --extra=+f --exclude=build --exclude=public --exclude=.mypy_cache --exclude=node_modules --exclude=.git -R *
vnoremap ,gd :GFiles?
onoremap ,gd :GFiles?
noremap ,gf :GFiles ./
noremap ,F :FZF %%
noremap ,f :Files ./
nnoremap ,, 
vnoremap - :Neoformat
xmap S <Plug>VSurround
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
omap af <Plug>(coc-funcobj-a)
xmap af <Plug>(coc-funcobj-a)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap g> <Plug>TComment_Comment
nmap <silent> g>b <Plug>TComment_Commentb
nmap <silent> g>c <Plug>TComment_Commentc
nmap <silent> g> <Plug>TComment_Comment
xmap g< <Plug>TComment_Uncomment
nmap <silent> g<b <Plug>TComment_Uncommentb
nmap <silent> g<c <Plug>TComment_Uncommentc
nmap <silent> g< <Plug>TComment_Uncomment
xmap gc <Plug>TComment_gc
nmap <silent> gcb <Plug>TComment_gcb
nmap <silent> gcc <Plug>TComment_gcc
nmap <silent> gc9c <Plug>TComment_gc9c
nmap <silent> gc9 <Plug>TComment_gc9
nmap <silent> gc8c <Plug>TComment_gc8c
nmap <silent> gc8 <Plug>TComment_gc8
nmap <silent> gc7c <Plug>TComment_gc7c
nmap <silent> gc7 <Plug>TComment_gc7
nmap <silent> gc6c <Plug>TComment_gc6c
nmap <silent> gc6 <Plug>TComment_gc6
nmap <silent> gc5c <Plug>TComment_gc5c
nmap <silent> gc5 <Plug>TComment_gc5
nmap <silent> gc4c <Plug>TComment_gc4c
nmap <silent> gc4 <Plug>TComment_gc4
nmap <silent> gc3c <Plug>TComment_gc3c
nmap <silent> gc3 <Plug>TComment_gc3
nmap <silent> gc2c <Plug>TComment_gc2c
nmap <silent> gc2 <Plug>TComment_gc2
nmap <silent> gc1c <Plug>TComment_gc1c
nmap <silent> gc1 <Plug>TComment_gc1
nmap <silent> gc <Plug>TComment_gc
nmap gf <Plug>(coc-format-selected)
xmap gf <Plug>(coc-format-selected)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
xmap ga <Plug>(EasyAlign)
omap ic <Plug>TComment_ic
vmap ic <Plug>TComment_ic
omap if <Plug>(coc-funcobj-i)
xmap if <Plug>(coc-funcobj-i)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
xnoremap <silent> <Plug>(coc-convert-snippet) :call coc#rpc#notify('doKeymap', ['convert-snippet'])
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xnoremap <Plug>ColorFgBg :ColorSwapFgBg
nnoremap <Plug>ColorFgBg :ColorSwapFgBg
xnoremap <Plug>ColorContrast :ColorContrast
nnoremap <Plug>ColorContrast :ColorContrast
xnoremap <Plug>Colorizer :ColorHighlight
nnoremap <Plug>Colorizer :ColorToggle
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, ''])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, ''])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, visualmode()])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, visualmode()])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <Plug>(coc-float-jump) :call       coc#util#float_jump()
nnoremap <Plug>(coc-float-hide) :call       coc#util#float_hide()
nnoremap <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <Plug>(coc-references) :call       CocAction('jumpReferences')
nnoremap <Plug>(coc-type-definition) :call       CocAction('jumpTypeDefinition')
nnoremap <Plug>(coc-implementation) :call       CocAction('jumpImplementation')
nnoremap <Plug>(coc-declaration) :call       CocAction('jumpDeclaration')
nnoremap <Plug>(coc-definition) :call       CocAction('jumpDefinition')
nnoremap <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     '', v:true)
vnoremap <Plug>(coc-range-select-backword) :call       CocAction('rangeSelect',     visualmode(), v:false)
vnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     visualmode(), v:true)
nnoremap <silent> <Plug>SurroundRepeat .
vmap <C-_>9 <Plug>TComment_9
nmap <C-_>9 <Plug>TComment_9
omap <C-_>9 <Plug>TComment_9
vmap <C-_>8 <Plug>TComment_8
nmap <C-_>8 <Plug>TComment_8
omap <C-_>8 <Plug>TComment_8
vmap <C-_>7 <Plug>TComment_7
nmap <C-_>7 <Plug>TComment_7
omap <C-_>7 <Plug>TComment_7
vmap <C-_>6 <Plug>TComment_6
nmap <C-_>6 <Plug>TComment_6
omap <C-_>6 <Plug>TComment_6
vmap <C-_>5 <Plug>TComment_5
nmap <C-_>5 <Plug>TComment_5
omap <C-_>5 <Plug>TComment_5
vmap <C-_>4 <Plug>TComment_4
nmap <C-_>4 <Plug>TComment_4
omap <C-_>4 <Plug>TComment_4
vmap <C-_>3 <Plug>TComment_3
nmap <C-_>3 <Plug>TComment_3
omap <C-_>3 <Plug>TComment_3
vmap <C-_>2 <Plug>TComment_2
nmap <C-_>2 <Plug>TComment_2
omap <C-_>2 <Plug>TComment_2
vmap <C-_>1 <Plug>TComment_1
nmap <C-_>1 <Plug>TComment_1
omap <C-_>1 <Plug>TComment_1
map <C-_>ca <Plug>TComment_ca
map <C-_>cc <Plug>TComment_cc
map <C-_>s <Plug>TComment_s
map <C-_>n <Plug>TComment_n
map <C-_>a <Plug>TComment_a
map <C-_>b <Plug>TComment_b
map <C-_>i <Plug>TComment_i
map <C-_>r <Plug>TComment_r
map <C-_>  <Plug>TComment_ 
map <C-_>p <Plug>TComment_p
vmap <C-_><C-_> <Plug>TComment_
nmap <C-_><C-_> <Plug>TComment_
omap <C-_><C-_> <Plug>TComment_
nnoremap <silent> <Plug>TComment_gc9c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc9cg@
nnoremap <silent> <Plug>TComment_gc8c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc8cg@
nnoremap <silent> <Plug>TComment_gc7c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc7cg@
nnoremap <silent> <Plug>TComment_gc6c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc6cg@
nnoremap <silent> <Plug>TComment_gc5c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc5cg@
nnoremap <silent> <Plug>TComment_gc4c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc4cg@
nnoremap <silent> <Plug>TComment_gc3c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc3cg@
nnoremap <silent> <Plug>TComment_gc2c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc2cg@
nnoremap <silent> <Plug>TComment_gc1c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc1cg@
vnoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
vnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <silent> <Plug>TComment_gC :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gCg@
nnoremap <silent> <Plug>TComment_gc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcg@
xnoremap <Plug>TComment_gc :TCommentMaybeInline
nnoremap <silent> <Plug>TComment_gcb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcbg@
nnoremap <silent> <Plug>TComment_gcc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gccg@$
noremap <Plug>TComment_ic :call tcomment#textobject#InlineComment()
xnoremap <silent> <Plug>TComment_Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <silent> <Plug>TComment_Commentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentbg@
nnoremap <silent> <Plug>TComment_Commentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentcg@$
nnoremap <silent> <Plug>TComment_Commentl :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentlg@$
nnoremap <silent> <Plug>TComment_Comment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentg@
xnoremap <silent> <Plug>TComment_Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <silent> <Plug>TComment_Uncommentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentbg@
nnoremap <silent> <Plug>TComment_Uncommentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentcg@$
nnoremap <silent> <Plug>TComment_Uncomment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentg@
noremap <Plug>TComment_,_s :TCommentAs =&ft_
noremap <Plug>TComment_,_n :TCommentAs =&ft 
noremap <Plug>TComment_,_a :TCommentAs 
noremap <Plug>TComment_,_b :TCommentBlock
noremap <Plug>TComment_,_r :TCommentRight
xnoremap <Plug>TComment_,_i :TCommentInline
noremap <Plug>TComment_,_  :TComment 
noremap <Plug>TComment_,_p vip:TComment
xnoremap <Plug>TComment_,__ :TCommentMaybeInline
nnoremap <Plug>TComment_,__ :TComment
snoremap <Plug>TComment_,__ :TComment
onoremap <Plug>TComment_,__ :TComment
noremap <Plug>TComment_<C-_>ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#complete#Complete"))
noremap <Plug>TComment_ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#complete#Complete"))
noremap <Plug>TComment_<C-_>cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_<C-_>s :TCommentAs =&ft_
noremap <Plug>TComment_s :TCommentAs =&ft_
noremap <Plug>TComment_<C-_>n :TCommentAs =&ft 
noremap <Plug>TComment_n :TCommentAs =&ft 
noremap <Plug>TComment_<C-_>a :TCommentAs 
noremap <Plug>TComment_a :TCommentAs 
noremap <Plug>TComment_<C-_>b :TCommentBlock
noremap <Plug>TComment_b :TCommentBlock
noremap <Plug>TComment_<C-_>i v:TCommentInline mode=I#
noremap <Plug>TComment_i v:TCommentInline mode=I#
noremap <Plug>TComment_<C-_>r :TCommentRight
noremap <Plug>TComment_r :TCommentRight
noremap <Plug>TComment_<C-_>  :TComment 
noremap <Plug>TComment_  :TComment 
noremap <Plug>TComment_<C-_>p m`vip:TComment``
noremap <Plug>TComment_p m`vip:TComment``
vnoremap <Plug>TComment_<C-_><C-_> :TCommentMaybeInline
vnoremap <Plug>TComment_ :TCommentMaybeInline
nnoremap <Plug>TComment_<C-_><C-_> :TComment
onoremap <Plug>TComment_<C-_><C-_> :TComment
nnoremap <Plug>TComment_ :TComment
onoremap <Plug>TComment_ :TComment
nnoremap <silent> <C-Bslash> :TmuxNavigatePrevious
nnoremap <silent> <Plug>(PrettierCliPath) :PrettierCliPath
nnoremap <silent> <Plug>(PrettierCliVersion) :PrettierCliVersion
nnoremap <silent> <Plug>(PrettierCli) :PrettierCli
nnoremap <silent> <Plug>(PrettierVersion) :PrettierVersion
nnoremap <silent> <Plug>(PrettierPartial) :PrettierPartial
nnoremap <silent> <Plug>(PrettierFragment) :PrettierFragment
nnoremap <silent> <Plug>(PrettierAsync) :PrettierAsync
nnoremap <silent> <Plug>(Prettier) :Prettier
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
vmap <C-J> <Plug>(coc-snippets-select)
nnoremap <F8> :set keymap=
nnoremap <F7> set keymap=czech
nnoremap <Right> 5>
nnoremap <Left> 5<
nnoremap <Down> 5+
nnoremap <Up> 5-
nnoremap <silent> <C-L> :TmuxNavigateRight
nnoremap <silent> <C-H> :TmuxNavigateLeft
nnoremap <silent> <C-K> :TmuxNavigateUp
nnoremap <silent> <C-J> :TmuxNavigateDown
imap S <Plug>ISurround
imap s <Plug>Isurround
imap <NL> <Plug>(coc-snippets-expand-jump)
imap  <Plug>(coc-snippets-expand)
inoremap <expr>  pumvisible() ? "\" : "\u\"
imap  <Plug>Isurround
imap 9 <Plug>TComment_9
imap 8 <Plug>TComment_8
imap 7 <Plug>TComment_7
imap 6 <Plug>TComment_6
imap 5 <Plug>TComment_5
imap 4 <Plug>TComment_4
imap 3 <Plug>TComment_3
imap 2 <Plug>TComment_2
imap 1 <Plug>TComment_1
imap s <Plug>TComment_s
imap n <Plug>TComment_n
imap a <Plug>TComment_a
imap b <Plug>TComment_b
imap i <Plug>TComment_i
imap r <Plug>TComment_r
imap   <Plug>TComment_ 
imap p <Plug>TComment_p
imap  <Plug>TComment_
cnoremap %% =expand('%:h').'/'
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backupcopy=yes
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set expandtab
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=trail:·,tab:»·,trail:·
set mouse=a
set pastetoggle=<F5>
set pyxversion=3
set ruler
set runtimepath=~/.vim,~/.vim/bundle/base16-vim,~/.fzf,~/.vim/bundle/fzf.vim,~/.vim/bundle/vim-prettier,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/vim-tmux-navigator,~/.vim/bundle/vimux,~/.vim/bundle/tcomment_vim,~/.vim/bundle/gundo.vim,~/.vim/bundle/vim-surround,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-easy-align,~/.vim/bundle/vimproc.vim,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-jsx,~/.vim/bundle/typescript-vim,~/.vim/bundle/vim-jsx-typescript,~/.vim/bundle/coc.nvim,~/.vim/bundle/vim-snippets,~/.vim/bundle/Colorizer,~/.vim/bundle/vim-arduino,~/.vim/bundle/vim-arduino-syntax,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/bundle/vim-javascript/after,~/.vim/bundle/vim-jsx/after,~/.vim/bundle/vim-jsx-typescript/after,~/.vim/after,~/.config/coc/extensions/node_modules/coc-snippets
set secure
set shiftwidth=2
set shortmess=filnxtToOSc
set showcmd
set smartcase
set softtabstop=2
set statusline=%{coc#status()}%{get(b:,'coc_current_function','')}
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tabstop=2
set tags=./tags,./TAGS,tags,TAGS,gems.tags
set undodir=~/.vimundo
set undofile
set updatetime=300
set wildignore=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,node_modules,tmp,project/target,target,tags,CMakeFiles,bower_components,dist,_darcs,vcr,app/assets/images,*.dSYM,*.pyc,_build,deps,rel
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd .config/i3/config
edit .config/i3/config
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'conf'
setlocal filetype=conf
endif
setlocal fixendofline
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'conf'
setlocal syntax=conf
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 290 - ((35 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
290
normal! 0
tabnext 1
badd +0 .config/i3/config
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
