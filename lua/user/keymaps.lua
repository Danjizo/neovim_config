local keymap = vim.keymap.set
local options = { noremap = true, silent = true }

--keymap("n", "<Space>", "<Nop>", options)
vim.g.mapleader = " "                    -- Map the leader key
vim.g.maplocalleader = " "               -- Map the leader key

-- Split navigation
keymap('n', "<C-h>", "<C-w>h", options)      -- Move to the left split
keymap('n', "<C-j>", "<C-w>j", options)      -- Move to the split below
keymap('n', "<C-k>", "<C-w>k", options)      -- Move to the split above
keymap('n', "<C-l>", "<C-w>l", options)      -- Move to the right split

-- Split resizing
keymap('n', "<C-Left>", ":vertical resize -3<CR>", options)
keymap('n', "<C-Up>", ":resize +3<CR>", options)
keymap('n', "<C-Down>", ":resize -3<CR>", options)
keymap('n', "<C-Right>", ":vertical resize +3<CR>", options)

-- Indenting in Visual mode
keymap('v', '>', ">gv", options)
keymap('v', '<', "<gv", options)
 
-- Toggles a full height Explorer window on the left hand side of the current tab
keymap("", "<leader>e", ":Lex 30<CR>", options)
	
-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", options)
keymap("n", "<S-h>", ":bprevious<CR>", options)


-- Move selected text up and down
keymap("v", "<A-j>", ":move '>+1<CR>gv", options)
keymap("v", "<A-k>", ":move '<-2<CR>gv", options)


term_opts = { silent = true }

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
