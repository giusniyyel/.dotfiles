-- Mapping helper
local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Define Mapleader
vim.g.mapleader = " "

-- Save and Close
mapper("n", "<Leader>q", ":q<CR>")
mapper("n", "<Leader>w", ":w<CR>")
mapper("n", "<Leader>ww", ":w!<CR>")
mapper("n", "<Leader>mq", ":qa!<CR>")

-- Duplicate Line
mapper("n", "tt", ":t.<CR>")

-- Change Buffer
mapper("n", "<C-M>", ":bnext<CR>")
mapper("n", "<C-N>", ":bprev<CR>")
mapper("n", "<TAB>", ":bnext<CR>")
mapper("n", "<S-TAB>", ":bprevious<CR>")

-- Resize with arrows
mapper("n", "C-Up", ":resize -2<CR>")
mapper("n", "C-Down", ":resize +2<CR>")
mapper("n", "C-Left", ":vertical resize -2<CR>")
mapper("n", "C-Right", ":vertical resize +2<CR>")

-- Better window movement
mapper("n", "<C-h>", "<C-w>h")
mapper("n", "<C-j>", "<C-w>j")
mapper("n", "<C-k>", "<C-w>k")
mapper("n", "<C-l>", "<C-w>l")

-- Plugins Mappings

-- Telescope
mapper("n", "<C-F>", ":Telescope live_grep<CR>")
mapper("n", "<C-P>", ":Telescope find_files<CR>")
mapper("n", ",v", ":lua require('plugins.telescope').search_dotfiles()<CR>")
mapper("n", ",p", ":Telescope media_files<CR>")

-- File Tree Explorer
mapper("n", "<Leader>nt", ":NvimTreeToggle<CR>")
mapper("n", ",e", ":NvimTreeRefresh<CR>")

-- Troubles
mapper("n", "<leader>xx", "<cmd>Trouble<cr>")
mapper("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>")
mapper("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>")
mapper("n", "<leader>xl", "<cmd>Trouble loclist<cr>")
mapper("n", "<leader>xq", "<cmd>Trouble quickfix<cr>")
mapper("n", "gR", "<cmd>Trouble lsp_references<cr>")

-- Hop.nvim
mapper("n", ",f", ":HopWord<CR>")
mapper("n", ",l", ":HopLine<CR>")
mapper("n", ",o", ":HopPattern<CR>")

-- Completion
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
