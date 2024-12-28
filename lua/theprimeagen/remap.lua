vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>","<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set("n", "<C-d>h", ":tabprevious<CR>")
vim.keymap.set("n", "<C-d>l", ":tabnext<CR>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

vim.keymap.set("i","jk","<Esc>")


vim.keymap.set("n", "<Tab>", ":tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>")


-- Map Shift + l to go to the next buffer
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true })

-- Map Shift + h to go to the previous buffer
vim.keymap.set("n", "<S-h>", ":bprev<CR>", { noremap = true, silent = true })


vim.keymap.set("n", "<S-t>", ":tabnew<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>fg", function()
  require('telescope.builtin').live_grep({
    cwd = vim.fn.getcwd()  -- This ensures it starts searching from the current working directory
  })
end, { noremap = true, silent = true })

-- Toggle netrw file explorer with 'B'
vim.api.nvim_set_keymap('n', '<D-b>', ':Ex<CR>', { noremap = true, silent = true })

