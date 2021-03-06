"set shell=debian.exe
"set shellpipe=|
"set shellredir=>
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim',{'as':'onedark'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
call plug#end()

"Set: onedark
let g:onedark_termcolors = 256
colorscheme onedark

"Set: nerdtree
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '~'
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.swp']
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeNaturalSort = 1
noremap <C-Bslash> :NERDTreeFocus<CR>

"Set: airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'

"Set: gitgutter
let g:gitgutter_eager = 0

"Set: closetag
let g:closetag_filetypes = 'html,xhtml,jsx,vue'

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
set nowrap
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
set guicursor=v:hor10-Cursor,c:hor10-Cursor,ci:hor10-Cursor
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=R
set guioptions-=L
if (has("termguicolors"))
  set termguicolors
endif
highlight cursor gui=reverse guifg=NONE guibg=NONE
if has("gui")
  if has("win32")
    set guifont=Source_Code_Pro:h10
  else
    set guifont=Source\ Code\ Variable\ 11
  endif
endif
