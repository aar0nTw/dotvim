# Gabrielle.vim

Garberielle.vim is a complete settings and toolbox for vim of aar0n :D

## Prerequisites

`brew install universal_ctags rg fzf`

## Usage

`git clone https://github.com/aar0nTw/Garberielle.vim.git`

`mv Garberielle.vim ~/.vim`

`ln -s ~/.vim/vimrc ~/.vimrc`

Initialize `pathogen` bundle submodule (DEPRECATED, Will move to `dein.vim`):

```sh
cd ~/.vim

git submodule init

git submodule update
```

Install dein.vim plugin manager

`sh ./install.sh ./dein`

Run following commands in vim:

`:call dein#install()`

## Optional

`:CocInstall coc-snippets coc-tsserver coc-tabnine coc-angular coc-html coc-pyright coc-list coc-angular coc-json`

### Shortcut

#### leader key is `,`

- `<F9>` : `Paste mode`
- `<F4>` : `Thumbnail`
- `<F2>` : `CoffeeLint`
- `FF` : `Ack`
- `FG` : `AckFile`
- `C-l` : `Vista`
- `C-o` : `Nerdtree`
- `<Leader>c` : Switch cursor highlight.

### If your git commit was error, please set your git default editor

`git config --global core.editor /usr/bin/vim`
