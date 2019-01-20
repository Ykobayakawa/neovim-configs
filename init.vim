" General Settings
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
set virtualedit=onemore
set smartindent
set visualbell
set statusline=2
set showtabline=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

filetype indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]
set scrolloff=8
set sidescrolloff=16
set sidescroll=1

set clipboard=unnamed,unnamedplus
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set background=dark
set t_Co=256
set termguicolors

set ttimeoutlen=10

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.h setlocal tabstop=8 softtabstop=8 shiftwidth=8
    autocmd BufNewFile,BufRead *.c setlocal tabstop=8 softtabstop=8 shiftwidth=8
    autocmd BufNewFile,BufRead *.cpp setlocal tabstop=8 softtabstop=8 shiftwidth=8
augroup END

" dein
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	let g:rc_dir    = expand("~/.config/nvim/")
	let s:toml      = g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
	call dein#load_toml(s:toml,      {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})
	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

" vim-airline
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Colorscheme
"colorscheme lucius
colorscheme molokai

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1

" netrw
"let g:netrw_liststyle=3
"let g:netrw_banner=0
"let g:netrw_browse_split=2
"let g:netrw_winsize=15
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
