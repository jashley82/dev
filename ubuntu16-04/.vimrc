" pathogen
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

" nerdtree
map <leader>e :NERDTreeToggle<CR>

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map ; :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" pip package powerline-tmux
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" python mode
let g:pymode=1

set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nofoldenable
