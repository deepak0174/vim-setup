" ###############################################################
" ## Plugins will be downloaded under thie specified directory ##
" ###############################################################


call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'


" Necessary Plugins

" statusline/tabline plugin and git branch name support
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'


" Sidebar for listing files and git support for nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" List files from bottom-panel
Plug 'ctrlpvim/ctrlp.vim'


" Plugin for language pack, supports many programming-languages
Plug 'sheerun/vim-polyglot'

" Javascript, Typescript Plug
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'

" SCSS Plug
Plug 'cakebaker/scss-syntax.vim'

" Markdown Plug
Plug 'godlygeek/tabular'
Plug 'godlygeek/tabular'

" Linting
Plug 'dense-analysis/ale'


" Autocomplete Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" #####################
" ## Mapping of Keys ##
" #####################

" Nerd Tree Mapping to open sidebar Ctrl+b
map <C-b> :NERDTreeToggle<CR>



" ###################################
" ## Plugin Related configurations ##
" ###################################

" NerdTree

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')



" lightline 
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' 

