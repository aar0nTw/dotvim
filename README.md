# dotvim

<img width="1492" alt="CleanShot 2022-05-20 at 03 06 20@2x" src="https://user-images.githubusercontent.com/935988/169382588-be3b85c6-f25a-43a9-a293-cc39f0c1157a.png">

## Prerequisites

`brew install universal_ctags rg fzf`

## Usage

`git clone https://github.com/aar0nTw/dotvim.git`

`ln -s dotvim ~/.config/nvim`

`ln -s ~/.config/nvim/vimrc ~/.vimrc`

Initialize `pathogen` bundle submodule (**DEPRECATED**, Will move to `dein.vim`):

```sh
cd ~/.vim

git submodule init

git submodule update
```

Install `dein.vim` plugin manager

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
