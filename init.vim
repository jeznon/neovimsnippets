
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'diepm/vim-rest-console'
Plug 'cakebaker/scss-syntax.vim'
Plug 'habamax/vim-godot'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

Plug 'szw/vim-maximizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kassio/neoterm'
Plug 'tpope/vim-commentary'
Plug 'sbdchd/neoformat'

Plug 'catppuccin/vim', {'as': 'catppuccin'}
Plug 'jbyuki/venn.nvim'




call plug#end()

map <F2> :NERDTreeToggle<CR>
map <F7> :! prettier --single-quote --trailing-comma es5 --print-width 140 --write %<CR>
nmap <F9> :exe "silent ! curl http://192.168.0.22:10102/hello"<CR>





se wildignore=./node_modules/**,./.git/**

let g:NERDTreeIgnore = ['^node_modules$']
set mouse=a
set nobackup
set nowritebackup



set termguicolors

"set guicursor=
let g:ctrlp_working_path_mode=0
let g:ctrlp_by_filename = 0
let g:ctrlp_custom_ignore = {
			\ 'dir':  'target\|node_modules\|dist',
			\ 'file': '\.class$\|*.ttf\|.eot\|.woff\|.woff2'
			\ }

"
"let mapleader= " "
"


let g:markdown_fenced_languages=[ 'javascript' , 'js=javascript' , 'json=javascript']

let g:lightline ={
			\ 'active': {
				\'left':[ ['mode', 'paste'],
				\    ['gitbranch','readonly','filename','modified']]
				\},
				\'component_function':{
				\'gitbranch':'gitbranch#name'
				\},
				\'colorscheme': 'catppuccin_mocha'
				\}
let g:NERDTreeMinimalMenu=1

set cmdheight=1
colorscheme catppuccin_mocha
se number relativenumber



function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
  set tabstop=2     " Size of a hard tabstop (ts).
  set shiftwidth=2  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction
call UseSpaces()
imap <M-.> <Plug>(copilot-next)
imap <M-,> <Plug>(copilot-previous)
