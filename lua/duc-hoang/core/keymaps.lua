vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("i", "jk", "<ESC>")
keymap.set("i", "jj", "<ESC>:w<CR>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>]", ":tabn<CR>")
keymap.set("n", "<leader>[", ":tabp<CR>")

-- plugin keymap

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>]", ":tabn<CR>")

keymap.set("n", "<leader>l", ":NvimTreeFindFile<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")   -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")   -- list available help tags

-- gitblame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>")
keymap.set("n", "<leader>gl", ":GitBlameOpenFileURL<CR>")

-- window resize
keymap.set("n", "<leader>rh", "<cmd>vertical resize -5<cr>")
keymap.set("n", "<leader>rl", "<cmd>vertical resize +5<cr>")
keymap.set("n", "<leader>rj", "<cmd>horizontal resize -5<cr>")
keymap.set("n", "<leader>rk", "<cmd>horizontal resize +5<cr>")

keymap.set("n", "<C-f>", vim.lsp.buf.format)
keymap.set("n", "<C-g>", ":CocCommand prettier.forceFormatDocument<cr>")

keymap.set("n", "<leader>e", vim.diagnostic.open_float)

-- git conflict
keymap.set("n", "<leader>c,", ":GitConflictListQf<CR>")
keymap.set("n", "<leader>cn", ":GitConflictNextConflict<CR>")
keymap.set("n", "<leader>cm", ":GitConflictPrevConflict<CR>")
keymap.set("n", "<leader>ch", ":GitConflictChooseOurs<CR>")
keymap.set("n", "<leader>cj", ":GitConflictChooseTheirs<CR>")
keymap.set("n", "<leader>ck", ":GitConflictChooseBoth<CR>")
keymap.set("n", "<leader>cl", ":GitConflictChooseNone<CR>")

-- reset vim input buffers
keymap.set("n", "<leader>co", ":bufdo e!<CR>")

keymap.set("n", "<leader>y", ":let @+ = expand(\"%\")<CR>")
keymap.set("n", "<leader>Y", ":let @+ = expand(\"%:p\")<CR>")

-- Github keymaps
keymap.set("n", "<leader>p", ":Octo search is:pr is:open author:duchk226<CR>")
keymap.set("n", "<leader>P", ":Octo search is:pr is:closed author:duchk226<CR>")

local o = vim.o

o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2
