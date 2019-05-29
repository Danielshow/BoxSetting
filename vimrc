set nocompatible
runtime macros/matchit.vim
    filetype indent plugin on
set is
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:ackprg = 'ag --nogroup --nocolor --column'
" ========== autocomplete
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'valloric/youcompleteme'
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 "0
let mapleader = ","

" ========= snippets
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'easymotion/vim-easymotion'

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-Tab>"

" ========== ruby plugins
Plugin 'tpope/vim-dispatch'
Plugin 'jgdavey/tslime.vim'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'

"let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:rspec_command = "Dispatch rspec {spec}"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ========== colorschemes 
Plugin 'flazz/vim-colorschemes'
Plugin 'cakebaker/scss-syntax.vim' 
Plugin 'craigemery/vim-autotag' 
Plugin 'edkolev/tmuxline.vim'
Plugin 'michaeljsmith/vim-indent-object'

" =========== git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jparise/vim-graphql'
Plugin 'vim-syntastic/syntastic'

" ==== enable matchit
" =========== markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'dyng/ctrlsf.vim' " for really nice search results like in sublime
Plugin 'yonchu/accelerated-smooth-scroll' 
Plugin 'vim-scripts/IndexedSearch' 
Plugin 'itspriddle/vim-jquery'
Plugin 'tpope/vim-haml' 
Plugin 'junegunn/goyo.vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler' 
"========= syntax helpers
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'Chiel92/vim-autoformat'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'lambdalisue/vim-django-support'
Plugin 'alvan/vim-closetag'
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.php,*.phtml,*.js,*.jsx,*.coffee,*.erb'


"======= eslint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_ruby_checkers = ['rubocop']

" ========= file tree
Plugin  'scrooloose/nerdtree'
  
  let NERDTreeIgnore = [ '__pycache__',  '\.pyc$', '\.o$', '\.swp', '*\.swp', 'node_modules/' ]
  let NERDTreeShowHidden=1
  let NERDTreeQuitOnOpen=1
" ========= rails
Plugin 'kchmck/vim-coffee-script' 
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails' 
Plugin 'ngmy/vim-rubocop'
" ========= navigation
Plugin 'christoomey/vim-tmux-navigator'
  " autostart nerd-tree
  autocmd StdinReadPre * let s:std_in=1
  " nerdtree toggle
  map <C-t> :NERDTreeToggle<CR>
Plugin 'zhaocai/GoldenView.Vim'
  let g:goldenview__enable_default_mapping = 0
Plugin 'benmills/vimux'
  " vimux binding
  map <Leader>vp :VimuxPromptCommand<CR>
  nmap <F8> :TagbarToggle<CR>

" ======= fuzzy find
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'

" ======= extras
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'majutsushi/tagbar'
Plugin 'wincent/command-t'
Plugin 'bling/vim-airline'
  " airline powerline fonts
  let g:airline_powerline_fonts=1

  
call vundle#end()            " required
filetype plugin indent on    " required

" ============= extra settings
syntax on

" tabs to 2 spaces
" set smartindent
set background=dark " required by gruvbox
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set hidden
:set guioptions-=m " remove menu bar
:set guioptions-=T " remove toolbar
:set guioptions-=r " remove right-hand scroll bar
:set guioptions-=L " remove left-hand scroll bar
":set lines=999 columns=999
set shortmess+=A " disable swap file warning

" hybrid line numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" colorschemes 
" Dark: monokai-chris, gruvbox
" Light: ChocolatePapaya
colorscheme gruvbox
  let g:gruvbox_contrast_dark='default'
  let g:gruvbox_contrast_light='default'
" split below and right feels more natural
set splitbelow

" no wrapping
set nowrap

" allow backspace immediately after insert
set bs=2

" useful aliases
cnoreabbrev W w
cnoreabbrev Q q

" save undo in a file
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000


" tmux will only forward escape sequences to the terminal if surrounded by a
" DCS sequence
" "
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Folding 
augroup XML
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

map ; :Files<CR>
