let g:ale_sign_column_always = 1
let g:ale_fixers = {
      \   'javascript': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'eslint'],
      \   'javascript.jsx': ['prettier'],
      \   'typescript.tsx': ['prettier'],
      \   'css': ['prettier'],
      \}
