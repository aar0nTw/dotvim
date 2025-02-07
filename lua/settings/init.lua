-- Init nvim-tree
require'nvim-tree'.setup {
  view = {
    width = '25%',
  },
};

-- Init nvim-comment
require'nvim_comment'.setup {
  comment_empty = true,
  comment_empty_trim_whitespace = false,
};
