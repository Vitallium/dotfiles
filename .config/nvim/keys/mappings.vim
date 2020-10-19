" General {{{
let mapleader = ' '
let maplocalleader = '\'

" Save file
nnoremap <silent> <leader>w :write<CR>
" Save and close
nnoremap <silent> <leader><S-w> :x<CR>
" Easy align in visual mode
xmap     ga <Plug>(EasyAlign)
" Easy align in normal mode
nmap     ga <Plug>(EasyAlign)
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
xmap <BS> x
" }}}

" Editor {{{
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" }}}

" Search {{{
" Open fuzzy files with leader \
nnoremap <silent> <leader>\ :Files<CR>
" Open fuzzy buffers with leader b
nnoremap <silent> <leader>b :Buffers<CR>
" Open ripgrep
nnoremap <silent> <leader>f :Rg<CR>
"
nnoremap <leader>gc :GBranches<CR>
" Open ripgrep agriculture
nmap <leader>/ <Plug>RgRawSearch
" Open ripgrep agriculture for visual selection
vmap <leader>/ <Plug>RgRawVisualSelection
" Remap ** to * now that we are using * for other bindings
nnoremap ** *
" Open ripgrep agriculture for cursor word
nmap */ <Plug>RgRawWordUnderCursor
" Open ripgrep for cursor word
nnoremap <silent> *f :Rg <C-R><C-W><CR>
" Open global ripgrep for cursor word
nnoremap <silent> *<S-f> :Rgg <C-R><C-W><CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" }}}

" Switching {{{
" Next buffer
" nnoremap <silent> <Tab> :bnext<CR>
" Previous buffer
" nnoremap <silent> <S-Tab> :bprevious<CR>
" Better window navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
" }}}

" View Management {{{
" Create vsplit
nnoremap <silent> <leader>\| :vsplit<CR>
" Create hsplit
nnoremap <silent> <leader>- :split<CR>
" Only window
nnoremap <silent> <leader>o :only<CR>
" Close the current buffer
nnoremap <silent> <leader>c :close<CR>
" Close the current buffer
nnoremap <silent> <leader><S-c> :%close<CR>
" Delete the current buffer
nnoremap <silent> <leader>x :bdelete<CR>
" Delete the current buffer
nnoremap <silent> <leader><S-x> :bdelete!<CR>
" Force close all buffers
nnoremap <silent> <leader>z :%bdelete<CR>
" Close all buffers
nnoremap <silent> <leader><S-z> :%bdelete!<CR>
" Toggle clean
nnoremap <silent> <F1> :Clean<CR>
" }}}

" Neoterm {{{
" Use gx{text-object} in normal mode
nmap gx <Plug>(neoterm-repl-send)
" Send selected contents in visual mode.
xmap gx <Plug>(neoterm-repl-send)
" }}}

" Fuzzy Finder {{{
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
" }}}

" Custom Tools {{{
" Cycle line number modes
nnoremap <silent> <leader>r :call CycleLineNumbering()<CR>
" These "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
" }}}

" vim:fdm=marker