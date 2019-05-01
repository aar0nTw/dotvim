
# dotvim

A complete neovim settings and toolbox backups.

## Hou to use:

`git clone https://github.com/aar0nTw/dotvim.git`

`mv dotvim ~/.vim`

`ln -s ~/.vim/vimrc ~/.vimrc`

Initialize bundle submodule:

```
$ cd ~/.vim

$ git submodule init

$ git submodule update
```

### Other dependency
- ctags - 5.8
- coffeetags - 0.0.3.0
- dash
- ack
- the_sliver_search (ag)
- pip/neovim
- fzf

#### Support css/scss on Tagbar

Please add this content to `.ctags` file in your `$HOME`

```sh
--langdef=scss
--langmap=scss:.scss
--regex-scss=/^[ \t]*([^\t {][^{]{1,100})(\t| )*\{/| \1/d,definition/
--regex-scss=/^[@]mixin ([^ (]+).*/\1/m,mixing/
--regex-scss=/^[ \t]*\.([A-Za-z0-9_-]+)/.\1/c,class,classes/
--regex-scss=/^[ \t]*#([A-Za-z0-9_-]+)/#\1/i,id,ids/
--regex-scss=/^[ \t]*(([A-Za-z0-9_-]+[ \t\n,]+)+)\{/\1/t,tag,tags/
--regex-scss=/^[ \t]*@media\s+([A-Za-z0-9_-]+)/\1/m,media,medias/ 

--langdef=css
--langmap=css:.css
--regex-css=/^[ \t]*\.([A-Za-z0-9_-]+)/.\1/c,class,classes/
--regex-css=/^[ \t]*#([A-Za-z0-9_-]+)/#\1/i,id,ids/
--regex-css=/^[ \t]*(([A-Za-z0-9_-]+[ \t\n,]+)+)\{/\1/t,tag,tags/
--regex-css=/^[ \t]*@media\s+([A-Za-z0-9_-]+)/\1/m,media,medias/ 
```

## Bundles list

```sh

bundle
├── Auto-Pairs
├── Jenkinsfile-vim-syntax
├── MatchTag
├── YouCompleteMe
├── ack.vim
├── ag.vim
├── ale
├── colorselector
├── ctrlp.vim
├── emmet-vim
├── git-gutter
├── gitignore.vim
├── gruvbox
├── html5.vim
├── javascript-libraries-syntax.vim
├── localvimrc
├── matchit
├── mw-utils
├── nerdcommenter
├── nerdtree
├── rails.vim
├── supertab
├── switch.vim
├── tabular
├── tagbar
├── tender.vim
├── tern_for_vim
├── tern_for_vim_coffee
├── thumbnail.vim
├── tlib
├── tslime.vim
├── vim-airline
├── vim-airline-theme
├── vim-archery
├── vim-buffergator
├── vim-coffee-script
├── vim-coloresque
├── vim-colors-solarized
├── vim-dasht
├── vim-devicons
├── vim-endwise
├── vim-fugitive
├── vim-go
├── vim-indent-guides
├── vim-javascript
├── vim-jsx
├── vim-l9
├── vim-literate-coffeescript
├── vim-markdown
├── vim-multiedit
├── vim-nerdtree-syntax-highlight
├── vim-node
├── vim-quantum
├── vim-ruby
├── vim-slim
├── vim-solarized8
├── vim-srcery
├── vim-startify
├── vim-styled-components
├── vim-surround
├── vim-test
└── vim-turbux

62 directories, 0 files

```

### Shortcut
#### leader key is `,`

 - `<F9>` : `Paste mode`
 - `<F4>` : `Thumbnail`
 - `<F2>` : `CoffeeLint`
 - `FF` : `Ack`
 - `FG` : `AckFile`
 - `C-l` : `TagBar`
 - `C-o` : `Nerdtree`
 - `<Leader>c` : Switch cursor highlight.

### If your git commit was error, please set your git default editor
`git config --global core.editor /usr/bin/vim`

