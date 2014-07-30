" Objective-C
autocmd! BufRead,BufNewFile *.m set filetype=objc

" ActionScript
autocmd! BufRead,BufNewFile *.as set filetype=actionscript
autocmd! BufRead,BufNewFile *.mxml set filetype=mxml

" GoLang
autocmd! BufRead,BufNewFile *.go set filetype=go

" SCSS
autocmd! BufRead,BufNewFile *.sass set filetype=sass.css
autocmd! BufRead,BufNewFile *.styl set filetype=css
autocmd! BufRead,BufNewFile *.scss set filetype=scss.css

" eRuby
autocmd! BufRead,BufNewFile *.erb set filetype=eruby.html
autocmd! BufRead,BufNewFile *.coffee.erb set filetype=eruby.coffee
autocmd! BufRead,BufNewFile *.js.erb set filetype=eruby.javascript
autocmd! BufRead,BufNewFile *.scss.erb setlocal filetype=scss.eruby
autocmd! BufRead,BufNewFile *.sass.erb setlocal filetype=sass.eruby

" JSON
autocmd! BufRead,BufNewFile *.json set filetype=javascript

" GitIgnore
autocmd! BufRead,BufNewFile *.gitignore set filetype=gitignore

" ZSH
autocmd! BufRead,BufNewFile *.zsh-theme set filetype=zsh

" Nginx Config
autocmd! BufRead,BufNewFile nginx.conf set filetype=nginx

" CocoaPods
autocmd! BufRead,BufNewFile Podfile,*.podspec set filetype=ruby

