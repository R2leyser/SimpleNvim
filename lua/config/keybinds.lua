local opts = { noremap=true, silent=true }
local optsCMD = { noremap=true }

vim.g.mapleader = " "

vim.keymap.set('n', '<F9>', ':!%:p', optsCMD)
vim.keymap.set('n', 'o', 'o<esc>', opts)
vim.keymap.set('n', 'O', 'O<esc>', opts)
vim.keymap.set('n', '<Leader>gm', ':make', optsCMD)
vim.keymap.set('n', '<Leader>y', '"*y', opts)
vim.keymap.set('n', '<Leader>p', '"*p', opts)
vim.keymap.set('n', '<Leader>Y', '"+y', opts)
vim.keymap.set('n', '<Leader>P', '"+p', opts)
vim.keymap.set('n', '<Leader>fs', ':w<CR>', optsCMD)
vim.keymap.set('n', '<Leader>qq', ':wqa<CR>', optsCMD)
vim.keymap.set('n', '<Leader>qQ', ':qa!<CR>', optsCMD)
vim.keymap.set('n', 'st', '<cmd>FloatermToggle<return>', opts)
vim.keymap.set('n', '[f', '[m[{ ', opts)

vim.keymap.set('n', '<SPACE>', '<Nop>', opts)
vim.keymap.set('n', '<Leader>cc', ':Compile<CR>', opts)

vim.keymap.set('n', 'K', ':call ShowDocumentation()<CR>', opts)
vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope find_files<return>', opts)
vim.keymap.set('n', '<Leader>fb', '<cmd>Telescope buffers<return>', opts)
vim.keymap.set('n', '<Leader>ft', '<cmd>Telescope tags<return>', opts)
vim.keymap.set('n', '<Leader>fq', '<cmd>Telescope quickfix<return>', opts)
vim.keymap.set('n', '<Leader>ee', ':NvimTreeToggle<CR>', optsCMD)

vim.keymap.set('i', '^L', '<esc>[s1z=', opts)
vim.keymap.set('i', 'jj', '<Esc>', opts)
