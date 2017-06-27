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
let g:pymode = 1
let g:pymode_lint = 0
let g:pymode_rope = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport_bind = '<C-c>ra'
let g:pymode_breakpoint_bind = '<leader>b'

set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nofoldenable
