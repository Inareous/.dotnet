" Refresh vimrc automatically
augroup myvimrc
	au!
	au BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

" Important base vim settings
syntax on
colorscheme gotham
set relativenumber
set mouse=a
set laststatus=2
set noshowmode
set cursorline
set cursorcolumn
set ruler
set colorcolumn=81
set list listchars=tab:▸\ ,nbsp:*,trail:·
set showbreak=↪\
set nobackup
set nowritebackup
set noswapfile
set noundofile

" Keyboard mappings
let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr>
nmap <leader>ms :MinimapToggle<cr>

" Plugin vars
let g:neocomplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:lightline = {
      \ 'colorscheme': 'gotham',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'filename', 'readonly' ], [ 'ale' ] ],
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \   'ale': '%{ALEGetStatusLine()}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="
set ts=4 sw=4 noet
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '!'
let g:ale_sign_warning = '·'
let g:ale_statusline_format = ['⨉ %d', '∆ %d', '⬥ ok']

" Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/
 call neobundle#begin(expand('~/.vim/bundle/'))
 NeoBundleFetch 'Shougo/neobundle.vim'

 NeoBundle 'rust-lang/rust.vim' " support for rust highlighting
 NeoBundle 'Shougo/neocomplete.vim' " autocompletion
 NeoBundle 'ervandew/supertab' " make tabs awesome
 NeoBundle 'scrooloose/nerdtree' " file manager
 NeoBundle 'scrooloose/nerdcommenter' " neat!
 NeoBundle 'shougo/vimfiler.vim' " filing cabinet
 NeoBundle 'itchyny/lightline.vim' " very nice minimal line 
 NeoBundle 'dhruvasagar/vim-table-mode' " very useful table making
 NeoBundle 'tpope/vim-fugitive' " make git great again!
 NeoBundle 'nathanaelkane/vim-indent-guides' " show those indent guides
 NeoBundle 'terryma/vim-multiple-cursors' " ctrl + d like Sublime
 NeoBundle 'severin-lemaignan/vim-minimap' " minimapping
 NeoBundle 'w0rp/ale' " a fresh ale of linted malt

 call neobundle#end()
 filetype plugin indent on
 NeoBundleCheck
