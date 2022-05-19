# dotvim

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

## Todo

- [x] dein.vim
  - [ ] Manage all plugins by dein
  - [ ] make all plugins setup in toml
- [ ] remove pathogen
- [ ] remove legacy settings
