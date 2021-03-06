" Install vim-plug if not already installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Custom Vim Plug {{{
" Options for each plugin, helps improve readability of plugin registration
let g:vim_plug_opts = {
  \ 'mbbill/undotree':              {'on': 'UndotreeToggle'},
  \ 'neoclide/coc.nvim':            {'branch': 'release'},
  \ 'prettier/vim-prettier':        {'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']},
  \ 'junegunn/fzf':                 {'dir': '~/.fzf','do': './install --all'},
\ }

" Register plugin with options
function! Plug(plugin) abort
  let plugin = substitute(a:plugin, "'", '', 'g')
  call plug#(plugin, get(g:vim_plug_opts, plugin, {}))
endfunction
" }}}

" Plugins {{{
" Begin vim plug
call plug#begin(expand('~/.config/nvim/plugged'))

" Custom command for registering plugins, must follow plug#begin
command! -nargs=1 -bar Plug call Plug(<f-args>)

" Defaults {{{
Plug 'farmergreg/vim-lastplace'       | " Go to last position when opening files
Plug 'tpope/vim-sensible'             | " Sensible defaults
Plug 'wincent/terminus'               | " Mouse support
" }}}

" Search {{{
Plug 'jesseleite/vim-agriculture'     | " Better project search
Plug 'junegunn/fzf'                   | " Main FZF plugin
Plug 'junegunn/fzf.vim'               | " Fuzzy finding plugin
Plug 'stsewd/fzf-checkout.vim'        | " FZF + GIT = :heart:
" }}}

" Navigation {{{
Plug 'tpope/vim-projectionist'        | " Navigation of related files
Plug 'christoomey/vim-tmux-navigator' | " TMUX integration
Plug 'lambdalisue/fern.vim'           | " Tree explorer
Plug 'antoinemadec/FixCursorHold.nvim'| " Fix for fern
Plug 'jeetsukumaran/vim-buffergator'  | " Buffer navigation
" }}}

" Visual {{{
Plug 'arecarn/vim-clean-fold'         | " Provides function for folds
Plug 'gruvbox-community/gruvbox'      | " Gruvbox theme
Plug 'thaerkh/vim-indentguides'       | " Provides indentation guides
Plug 'ryanoasis/vim-devicons'         | " Dev icons
Plug 'itchyny/lightline.vim'          | " Statusline
Plug 'mg979/vim-xtabline'             | " Tabline
Plug 'airblade/vim-gitgutter'         | " A Vim plugin which shows a git diff in the 'gutter' (sign column)
Plug 'liuchengxu/vista.vim'           | " Symbols window for LSP
" }}}

" Editor {{{
Plug 'editorconfig/editorconfig-vim'  | " Import tabs etc from editorconfig
Plug 'junegunn/vim-easy-align'        | " Helps alignment
Plug 'matze/vim-move'                 | " Move lines
Plug 'neoclide/coc.nvim'              | " Completion provider
Plug 'ntpeters/vim-better-whitespace' | " Highlight all trailing whitespaces
Plug 'tomtom/tcomment_vim'            | " Better commenting
Plug 'tpope/vim-repeat'               | " Improves repeat handling
Plug 'tpope/vim-surround'             | " Surround motions
Plug 'dense-analysis/ale'             | " Async linting
" }}}

" Tools {{{
Plug 'kassio/neoterm'                 | " REPL integration
Plug 'mbbill/undotree'                | " Undo history visualizer
Plug 'reedes/vim-pencil'              | " Auto hard breaks for text files
Plug 'reedes/vim-wordy'               | " Identify poor language use
Plug 'sedm0784/vim-you-autocorrect'   | " Automatic autocorrect
Plug 'tpope/vim-obsession'            | " Save sessions automatically
Plug 'tpope/vim-speeddating'          | " Tools for working with dates
" Plug 'tpope/vim-unimpaired'          | " Common mappings for many needs
Plug 'janko-m/vim-test'               | " Tests runner (Jest)
Plug 'voldikss/vim-floaterm'          | " Float terminal
Plug 'tpope/vim-dispatch'             | " Dispatch commands from VIM
Plug 'mhinz/vim-startify'             | " Start page
Plug 'jaxbot/selective-undo.vim'

" GIT {{{
Plug 'rbong/vim-flog'                 | " Commit viewer
Plug 'junegunn/gv.vim'                | " Commit browser
Plug 'samoshkin/vim-mergetool'        | " Merge tool for git
Plug 'shumphrey/fugitive-gitlab.vim'  | " Plugin for GitLab
Plug 'tpope/vim-fugitive'             | " Git tools
Plug 'rhysd/git-messenger.vim'        | " Reveal GIT message from a cursor position
" }}}

" }}}

" Syntax {{{
Plug 'sheerun/vim-polyglot'           | " Language pack
Plug 'tpope/vim-rails'                | " Ruby On Rails
Plug 'tpope/vim-endwise'              | " Wisely add end in ruby
Plug 'jparise/vim-graphql'            | " GraphQL support
Plug 'posva/vim-vue'                  | " Vue JS syntax highlighting
Plug 'godlygeek/tabular'              | " Better tables in markdown
Plug 'PsychoLlama/further.vim'        | " Navigate to JS files under the cursor
" }}}

" Writing {{{
Plug 'junegunn/goyo.vim'              | " Distraction-free writing
Plug 'junegunn/limelight.vim'         | " Hyperfocus-writing
" }}}

" End the plugin registration
call plug#end()
" }}}
