[Vim Config Link](https://github.com/amix/vimrc)


[Blog](https://freshman.tech/vim-javascript/)

# My custom Vim-setup

vim configuration file : ~/.vimrc


### Vim plugin manager : [Vim plug](https://github.com/junegunn/vim-plug)

* Edit `.vimrc` file and paste the vim plugin, If the plugin is on github then usually plugin is `[username]/[repo-name]`, but prefer the installation steps given.
* In vim editor `:PlugInstall` to install the plugin.

.vimrc 
```vimrc
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

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

```

For autocomplete functionality we used `coc`. To install the autocomplete feature for programming language javascript/typescript.

```vim
:CocInstall coc-tsserver
```
List of more extensions for `coc` : [List](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)





# Key Bindings

`<Ctrl + p>` : list and searc files in the project.
`<Ctrl + b>` : Open sidebar listing all the files in project like vscode sidebar





