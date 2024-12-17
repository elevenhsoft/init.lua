local data = assert(vim.fn.stdpath 'data') --[[@as string]]

require('telescope').setup {
  extensions = {
    wrap_results = true,

    fzf = {},
    history = {
      path = vim.fs.joinpath(data, 'telescope_history.sqlite3'),
      limit = 100,
    },
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {},
    },
  },
}

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'smart_history')
pcall(require('telescope').load_extension, 'ui-select')

local builtin = require 'telescope.builtin'

vim.keymap.set('n', '<space>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<space>ds', builtin.lsp_document_symbols, { desc = 'Search Document Symbols' })
vim.keymap.set('n', '<space>ws', builtin.lsp_dynamic_workspace_symbols, { desc = 'Search Workspace Symbols' })
vim.keymap.set('n', '<space>ft', builtin.git_files, { desc = 'Search Git Files' })
vim.keymap.set('n', '<space>fh', builtin.help_tags, { desc = 'Search Help Tags' })
vim.keymap.set('n', '<space>fg', builtin.live_grep, { desc = 'Live Grep' })
vim.keymap.set('n', '<space>/', builtin.current_buffer_fuzzy_find, { desc = 'Buffer FuzzyFinder' })
vim.keymap.set('n', '<space>gw', builtin.grep_string, { desc = 'Grep String' })
