" Objective-C
autocmd! BufNewFile,BufRead *.m set filetype=objc


" ActionScript
autocmd! BufNewFile,BufRead *.as set filetype=actionscript
autocmd! BufNewFile,BufRead *.mxml set filetype=mxml


" SCSS
au! BufRead,BufNewFile *.sass set filetype=sass.css
au! BufRead,BufNewFile *.styl set filetype=css
autocmd! BufNewFile,BufRead *.scss set filetype=scss.css


" eRuby
au! BufRead,BufNewFile *.coffee.erb set filetype=eruby.coffee
au! BufRead,BufNewFile *.js.erb set filetype=eruby.javascript
autocmd! BufNewFile,BufRead *.erb set filetype=eruby.html


" JSON
autocmd! BufNewFile,BufRead *.json set filetype=javascript


" GitIgnore
autocmd! BufNewFile,BufRead *.gitignore set filetype=gitignore


" ZSH
autocmd! BufNewFile,BufRead *.zsh-theme set filetype=zsh


" Nginx Config
autocmd! BufNewFile,BufRead nginx.conf set filetype=nginx


" CocoaPods
autocmd! BufNewFile,BufRead Podfile,*.podspec set filetype=ruby

