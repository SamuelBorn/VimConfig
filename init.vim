call plug#begin('/home/sam/.config/nvim/plugins/')
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jacoborus/tender.vim'
call plug#end()

" Set status bar theme
let g:airline_powerline_fonts = v:true
let g:airline_theme='minimalist'

colorscheme tender

" Always show 5 lines under cursor
set scrolloff=5

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" CTRL W W to switch
" Toggle NERDTree with Ctrl + D
nnoremap <C-d> :NERDTreeToggle<CR>

" Automatically open NERDTree workdir to current files directory
autocmd BufEnter * lcd %:p:h

" Set Arrow
let g:NERDTreeDirArrowExpandable = ' '

" Do not use arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
