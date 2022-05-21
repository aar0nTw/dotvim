# dotvim
![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
[![Join the chat at https://gitter.im/dotvim/community](https://img.shields.io/badge/chat-on%20gitter-9cf?style=for-the-badge)](https://gitter.im/dotvim/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

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
  - [x] Manage all plugins by dein
  - [x] make all plugins managed by dein setup in toml
- [x] remove pathogen
- [ ] remove legacy settings
