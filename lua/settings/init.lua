-- Init nvim-tree
require'nvim-tree'.setup {
  view = {
    width = '25%',
    hide_root_folder = true,
  },
};

-- Init nvim-comment
require'nvim_comment'.setup {
  comment_empty = true,
  comment_empty_trim_whitespace = false,
};
