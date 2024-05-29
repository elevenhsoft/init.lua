local opt = vim.opt

opt.inccommand = 'split'

-- Best search settings :)
opt.smartcase = true
opt.ignorecase = true

----- Personal Preferences -----
opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = 'yes'
opt.shada = { "'10", '<0', 's10', 'h' }

opt.clipboard = 'unnamedplus'

-- Don't have `o` add a comment
opt.formatoptions:remove 'o'

-- Save undo history
opt.undofile = true
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10
