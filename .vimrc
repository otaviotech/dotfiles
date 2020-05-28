set nocompatible
filetype on
filetype plugin on
set guifont=Fira Code

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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

Plugin 'scrooloose/nerdcommenter'

Plugin 'mxw/vim-jsx'

Plugin 'prettier/vim-prettier'

Plugin 'elixir-lang/vim-elixir'

Plugin 'slashmili/alchemist.vim'

Plugin 'suy/vim-context-commentstring'

Plugin 'tpope/vim-commentary'

Plugin 'junegunn/fzf.vim'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call vundle#end()
filetype plugin indent on

if (has("termguicolors"))
 set termguicolors
endif

let g:Guifont="Fira Code"

syntax enable
set t_Co=256
set cursorline
set number " Show current line number
set relativenumber " Show relative line numbers
set nowrap

" Colorschemes

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

let g:user_emmet_leader_key='<C-y>'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"let g:hardtime_default_on = 1

:map ;; <S-A>;<Esc>
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex set filetype=eelixir
