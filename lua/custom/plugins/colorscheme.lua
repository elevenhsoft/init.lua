return {
  {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'base16-default-dark'
    end,
  },
}
