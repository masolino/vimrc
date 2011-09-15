" To start vim without using this .vimrc file, use:
"     vim -u NORC
"
" To start vim without loading any .vimrc or plugins, use:
"     vim -u NONE

set showmode         " always show what mode we're currently editing in
set hidden           " hides buffers instead of closing them
set autoindent       " always set autoindenting on
set copyindent       " copy the previous indentation on autoindenting
set shiftround       " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch        " set show matching parenthesis
set history=1000     " remember more commands and search history
set undolevels=1000  " use many muchos levels of undo
set noerrorbells     " don't beep
set magic            " change the way backslashes are used in search patterns
set scrolloff=3      " Determines the number of context lines you would like to see above and below the cursor
set formatoptions+=1 " When wrapping paragraphs, don't end lines with 1-letter words (looks stupid)

set nobackup
set noswapfile

set relativenumber " Show the line number relative to the line with the cursor in front of each line
set undofile
set undodir=~/.vimundo

set modelines=0
set nomodeline

set gdefault " applies substitutions globally on lines
au FocusLost * :wa " save on losing focus

" Don't have to press that annoying Shift key that slows the commands down
nnoremap , :

" use jj to exit back to normal mode
inoremap jj <ESC>

" Use the damn hjkl keys
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

set background=dark
set guifont=Inconsolata:h16
let g:solarized_termcolors=256
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1
" let g:solarized_contrast="high" "default value is normal
colorscheme solarized
" colorscheme mustang

" Remove toolbar, left scrollbar and right scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set cursorline

" Command-/ to toggle comments
map <D-&> <plug>NERDCommenterToggle<CR>

" automatically leave insert mode after 'updatetime' milliseconds of inaction
" http://vim.wikia.com/wiki/To_switch_back_to_normal_mode_automatically_after_inaction
" au CursorHoldI * stopinsert

set transparency=3

" Make help open in a nice, big vertical split
au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif

" go full screen on open
" if has("gui_macvim")
"   set fuoptions=maxvert,maxhorz
"   au GUIEnter * set fullscreen
" endif

" for vim-css-color plugin
let g:cssColorVimDoNotMessMyUpdatetime = 1

" for autoclose plugin
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}', '|':'|' }
let g:AutoCloseProtectedRegions = ["Character"]

let g:ragtag_global_maps = 1

" <esc> in normal mode clears highlight
nnoremap <silent> <esc> :noh<cr><esc>

" map Ctrl Shift B to open the buffer list.
map <C-A> :buffers<c-M>

" Strip all trailing whitespace from a file, using \W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" the default ctags in /usr/bin on the Mac is GNU ctags, so change it to the exuberant ctags version in /usr/local/bin
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

iab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi.  Integer hendrerit lacus sagittis erat fermentum tincidunt.  Cras vel dui neque.  In sagittis commodo luctus.  Mauris non metus dolor, ut suscipit dui.  Aliquam mauris lacus, laoreet et consequat quis, bibendum id ipsum.  Donec gravida, diam id imperdiet cursus, nunc nisl bibendum sapien, eget tempor neque elit in tortor
