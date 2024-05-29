return {
  'tpope/vim-fugitive',
  'tpope/vim-sleuth',
  'numToStr/Comment.nvim',
  'mbbill/undotree',
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
}
