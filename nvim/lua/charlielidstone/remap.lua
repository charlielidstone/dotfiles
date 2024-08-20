local map = vim.keymap.set

vim.g.mapleader = " "
map("n", "<C-a>", function() vim.cmd(':normal! ggVG') end)

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("x", "<leader>p", "\"_dp")

map("n", "Q", "<nop>")

map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

map("n", "<leader><leader>", function()
		vim.cmd("so")
end)

map("n", "<leader>pv", function() vim.cmd(':NvimTreeToggle') end)
map("n", "<C-n>", function() vim.cmd(':NvimTreeFindFile') end)

