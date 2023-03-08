local home = os.getenv('HOME');
local db = require('dashboard');
db.setup({
  theme = 'hyper',
  preview = {
    command = 'cat | lolcat -S 125 -a -d 5 -s 35',
    file_path = home .. '/.config/nvim/neovim.cat',
    file_height = 12,
    file_width = 70,
  },
  config = {
    disable_move = true;
    week_header = {
      enable = false
    },
    packages = { enable = false },
    project = {
      enable = true,
      limit = 8,
    },
    shortcut = {
      {
        icon = '  ',
        desc = 'Recently opened files ',
        group = 'Label',
        key= 'h',
        action = 'Clap history'
      },
      {
        icon = '  ',
        desc = 'Find File ',
        group = 'Number',
        key= 'f',
        action = 'Clap files'
      },
      {
        icon = '  ',
        desc = 'File Browser ',
        key= 'o',
        group = 'Icon',
        action = 'NvimTreeFindFile'
      },
      {
        icon = '  ',
        desc = 'Find word ',
        group = 'Title',
        action = 'Clap live_grep',
        key = 'w',
      },
      {
        icon = '  ',
        desc = 'Find git history ',
        key = 'g',
        group = 'String',
        action ='Clap commits'
      },
    },
    mru = { limit = 10 },
    footer = { '@aar0nTw' }  --your footer
  }
})
