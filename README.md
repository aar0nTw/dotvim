# dotvim

<img width="1492" alt="CleanShot 2022-05-20 at 03 06 20@2x" src="https://user-images.githubusercontent.com/935988/169382588-be3b85c6-f25a-43a9-a293-cc39f0c1157a.png">

## Prerequisites

`brew install universal_ctags rg fzf`

## Usage
```sh
> git clone https://github.com/aar0nTw/dotvim.git
> ln -s dotvim ~/.config/nvim
```

Initialize `pathogen` bundle submodule (**DEPRECATED**, Will move to `dein.vim`):

```sh
> cd ~/.config/nvim
> git submodule init
> git submodule update
```

Install `dein.vim` plugin manager

```sh
> sh ./install.sh ./dein
```

Run following commands in vim:

```vim
" dein will install all plugins when nvim first start
:call dein#install()
```

## Optional

```vim
" Install lsp for coc
:CocInstall coc-snippets coc-tsserver coc-tabnine coc-angular coc-html coc-pyright coc-list coc-angular coc-json
```

## Todo

- [x] dein.vim
  - [ ] Manage all plugins by dein
  - [x] make all plugins managed by dein setup in toml
- [ ] remove pathogen
- [ ] remove legacy settings
