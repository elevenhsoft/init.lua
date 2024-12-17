local set = vim.keymap.set
local k = vim.keycode

set('n', '<space><F5>', vim.cmd.UndotreeToggle, { silent = true, desc = 'Open Undotree' })

-- Basic movement keybinds, these make navigating splits easy for me
set('n', '<c-j>', '<c-w><c-j>')
set('n', '<c-k>', '<c-w><c-k>')
set('n', '<c-l>', '<c-w><c-l>')
set('n', '<c-h>', '<c-w><c-h>')

-- Toggle hlsearch if it's on, otherwise just do "enter"
set('n', '<CR>', function()
  ---@diagnostic disable-next-line: undefined-field
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ''
  else
    return k '<CR>'
  end
end, { expr = true })

-- There are builtin keymaps for this now, but I like that it shows
-- the float when I navigate to the error - so I override them.
set('n', ']d', vim.diagnostic.goto_next)
set('n', '[d', vim.diagnostic.goto_prev)

set('n', '<space>e', vim.diagnostic.open_float, { desc = 'Open Diagnostics' })

set('n', '<M-j>', function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! ]c]]
  else
    vim.cmd [[m .+1<CR>==]]
  end
end)

set('n', '<M-k>', function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! [c]]
  else
    vim.cmd [[m .-2<CR>==]]
  end
end)

set('n', '<space>tt', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = 0 }, { bufnr = 0 })
end, { desc = 'Toggle Inlay Hints' })
