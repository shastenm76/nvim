--global variables
vim.cmd([[
set ai
set encoding=utf-8
set expandtab
set number relativenumber
set noswapfile
set scrolloff=5
set tabstop=4
set softtabstop=4
set shiftwidth=2
set shiftround
]])
vim.api.nvim_exec([[
  augroup DisableFolding
    autocmd!
    autocmd BufWritePost,BufEnter * set nofoldenable foldmethod=manual foldlevelstart=99
  augroup END
]], false)

--Other settings
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Save file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Save window" })

vim.cmd[[colorscheme solarized-osaka]]


