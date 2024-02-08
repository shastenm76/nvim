local map = vim.keymap.set
-- buffers

map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Oil Nvim shortcut
vim.api.nvim_set_keymap('n', '<leader>of', ':Oil --float <C-R>=expand("%:p")<CR><CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>on', ':Oil <C-R>=expand("%:p")<CR><CR>', { noremap = true, silent = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.api.nvim_set_keymap('n', '<A-v>', [[:Oil --quit<CR>]], { noremap = true, silent = true })
