"Set: Plugins
call plug#begin()
"Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'joshdick/onedark.vim',{'as':'onedark'}
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
call plug#end()

"Set: System
set number "显示行号
syntax on "语法高亮
set nocompatible "关闭兼容模式
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set autoread "设置文件被改动时自动载入
set completeopt=longest,preview,menu
filetype plugin on
filetype indent on
filetype on
set clipboard+=unnamed
set nobackup
set cursorline
set magic
set autoindent
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set incsearch
set showmatch
set matchtime=2
set mouse=a
set showcmd "显示输入的命令

if (has("termguicolors"))
  set termguicolors
endif

"Set: onedark
let g:onedark_termcolors = 256
colorscheme onedark

"Set: nerdtree
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = '∨'
map <C-\> :NERDTreeToggle<CR>

"Set: ale
let g:ale_linters_explicit = 1
let g:ale_linters = {
\	'javascript': ['eslint']
\}

"Set: airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1

"Set: gitgutter
let g:gitgutter_eager = 0
