" http://www.guckes.net/vim/setup.html
" https://github.com/shumphrey/vimrc/blob/master/vimrc

"ensure vim always runs from a shell
set shell=/bin/sh

"more smooth rendering
set timeoutlen=1000
set ttimeoutlen=0

set nocompatible
call pathogen#infect()
call pathogen#helptags()

set number

" windows resize
nnoremap <leader>1 :vertical resize +10<cr>
nnoremap <leader>2 :vertical resize -10<cr>
nnoremap <leader>3 :resize +10<cr>
nnoremap <leader>4 :resize -10<cr>

" open file from Quickfix List without closing it
autocmd! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L

" OS clipboard support
set clipboard=unnamed

" switching windows
map ; <C-W>k
map ' <C-W>w

" ruler
set ruler

" fix backspace
set bs=2
set history=100

" only search case sensitive if you include case
set incsearch
set ignorecase smartcase

" :Files key binding
nnoremap <Leader>t :Files<CR>

" Vim-ruby config:
let ruby_operators = 1
let ruby_spellcheck_strings = 1

filetype plugin indent on
syntax on
runtime! config/**/*.vim

" adding 'end' for ruby methods with shift+enter
" iTerm2 fix: preferences → profile → keys → add more key + → press Shift Enter in field Keyboard Shortcut → Action: Send Text with “vim” Special Char → Copy \n\nend\x1B-cc
imap <S-CR> <CR><CR>end<Esc>-cc

" Nerd-tree config:
autocmd vimenter * NERDTree
map <C-o> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeNodeDelimiter = "\u00a0"

" Scheme config:
set background=dark
let base16colorspace=256
colorscheme gruvbox

" Find definition config:
nnoremap <Leader>d :FindDefinition<CR>
nnoremap <Leader>D :SFindDefinition<CR>

" UndoTree config
nnoremap <Leader>h :UndotreeToggle<CR>

" vim-workspace
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_persist_undo_history = 1  " enabled = 1 (default), disabled = 0
let g:workspace_undodir = $HOME . '/.vim/sessions/undodir'
let g:workspace_autosave = 0
let g:workspace_autosave_always = 1
let g:workspace_autosave_untrailspaces = 1

" JS
let g:javascript_plugin_jsdoc = 1
