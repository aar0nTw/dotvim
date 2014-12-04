# Gabrielle.vim

Garberielle.vim is a complete settings and toolbox for vim of aar0n :D

## Bundles list

```sh

bundle
├── Auto-Pairs
├── MatchTag
├── ack.vim
├── ag.vim
├── colorselector
├── ctrlp.vim
├── dash.vim
├── emmet-vim
├── funcoo
├── git-gutter
├── gitignore.vim
├── html5.vim
├── javascript-libraries-syntax
├── julia
├── localvimrc
├── matchit
├── mw-utils
├── neocomplete.vim
├── neosnippet-snippets
├── neosnippet.vim
├── nerdcommenter
├── nerdtree
├── rails.vim
├── supertab
├── switch.vim
├── syntastic
├── tagbar
├── thumbnail.vim
├── tlib
├── tslime.vim
├── vim-airline
├── vim-autocomplpop
├── vim-buffergator
├── vim-coffee-script
├── vim-colors-solarized
├── vim-endwise
├── vim-fugitive
├── vim-haml
├── vim-indent-guides
├── vim-l9
├── vim-less
├── vim-literate-coffeescript
├── vim-markdown
├── vim-multiedit
├── vim-node
├── vim-ruby
├── vim-slim
├── vim-startify
├── vim-surround
├── vim-turbux
└── vimwiki

51 directories, 0 files


```
## Screenshot:

![screen shot 2014-12-04 at 3 01 19 pm](https://cloud.githubusercontent.com/assets/935988/5294817/b15d7116-7bc6-11e4-9527-10f38ed0af94.png)
![screen shot 2014-12-04 at 3 01 29 pm](https://cloud.githubusercontent.com/assets/935988/5294828/d49aadce-7bc6-11e4-918a-f799cb084a4e.png)
![screen shot 2014-12-04 at 3 01 32 pm](https://cloud.githubusercontent.com/assets/935988/5294829/d81e3b82-7bc6-11e4-872e-c99d76e6ead1.png)

##Hou to use:

`git clone https://github.com/aar0nTw/Aaron-Vimrc.git`

`mv Aaron-Vimrc ~/.vim`

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

