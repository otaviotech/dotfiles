set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'sonph/onehalf', {'rtp': 'vim/'}

Plugin 'sheerun/vim-polyglot'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'pangloss/vim-javascript'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'mattn/emmet-vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'joshdick/onedark.vim'

Plugin 'mhartington/oceanic-next'

Plugin 'takac/vim-hardtime'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if (has("termguicolors"))
 set termguicolors
endif

let g:Guifont="Fira Code"

syntax enable
set t_Co=256
set cursorline
set number                     " Show current line number
set relativenumber             " Show relative line numbers

"colorscheme onedark
colorscheme onehalfdark
"colorscheme OceanicNext 
"colorscheme space-vim-dark

let g:airline_theme='onehalfdark'

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" YCM
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:user_emmet_leader_key='<C-Z>'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:hardtime_default_on = 1

:map ;; <S-A>;<Esc>

