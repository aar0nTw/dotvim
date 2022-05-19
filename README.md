# dotvim

[![Join the chat at https://gitter.im/dotvim/community](https://badges.gitter.im/dotvim/community.svg)](https://gitter.im/dotvim/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![Screen Capture on 2022-05-20 at 03-18-12](https://user-images.githubusercontent.com/935988/169385624-ccf81b2a-ae64-4950-bf26-d34d280978d4.gif)

## Prerequisites

- nvim
- python
- node
- rust
- rg
- fzf
- lolcat
- bat

## Usage
```sh
$ git clone https://github.com/aar0nTw/dotvim.git
$ ln -s dotvim ~/.config/nvim
```

Initialize `pathogen` bundle submodule (**DEPRECATED**, Will move to `dein.vim`):

```sh
$ cd ~/.config/nvim
$ git submodule init
$ git submodule update
```

Install `dein.vim` plugin manager

```sh
$ sh ./install.sh ./dein
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
