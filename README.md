#Aaron's VIM setting

## Screenshot:

![screen shot 2013-06-12 at 2 08 30 am](https://f.cloud.github.com/assets/935988/638746/49f91f04-d2c4-11e2-9198-f094cfdf9570.png)
![screen shot 2013-06-12 at 2 19 38 am](https://f.cloud.github.com/assets/935988/638747/4a21686a-d2c4-11e2-896c-c4cf9ee35ea2.png)
![screen shot 2013-06-12 at 2 21 57 am](https://f.cloud.github.com/assets/935988/638750/4a633970-d2c4-11e2-980e-e80eeeaf8f67.png)
![screen shot 2013-06-12 at 2 22 22 am](https://f.cloud.github.com/assets/935988/638751/4a6f485a-d2c4-11e2-87ab-0d897062c4f0.png)
![screen shot 2013-06-12 at 2 23 00 am](https://f.cloud.github.com/assets/935988/638754/53ddaf1c-d2c4-11e2-8084-73d8201a1595.png)

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
ctags - 5.8
coffeetags - 0.0.3.0

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

### Included plugins

```sh
[bundle] tree -L 1
.
├── Auto-Pairs
├── ack.vim
├── ag.vim
├── colorselector
├── ctrlp.vim
├── dash.vim
├── funcoo
├── javascript-libraries-syntax
├── nerdcommenter
├── nerdtree
├── rails.vim
├── snipmate.vim
├── supertab
├── tagbar
├── thumbnail.vim
├── vim-autocomplpop
├── vim-coffee-script
├── vim-colors-solarized
├── vim-fugitive
├── vim-haml
├── vim-indent-guides
├── vim-markdown
├── vim-multiedit
├── vim-powerline
├── vim-ruby
├── vim-slim
├── vim-snippets
├── vim-startify
├── vim-surround
├── vimwiki
└── zencoding-vim
```
