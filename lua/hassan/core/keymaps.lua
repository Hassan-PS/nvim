-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
--keymap.set("i", "jk", "<ESC>")

-- clear search highlights
--keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
--keymap.set("n", "<leader>+", "<C-a>") -- increment
--keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

--Extra keymaps  (these are commands are from the plugin-setup.lua file from respective plugin):
--  1.  adds capability to switch between split window using hjkl
--     use("christoomey/vim-tmux-navigator")  
--  2.  adds capability to maximize current split using space+m, same shortcut again resets the split to equal size
--     use("szw/vim-maximizer") -- maximizes and restores current window
--  3.  srrounding some word with some symbol (example: vairble_example => "vairble_example") by pressing ys then w them ", deleting is by pressing ds then w then ", replacing eexisting surround by cs then " then ' to get  'vairble_example')
--     use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
--  4.  no idea what this does 
--     use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)
--  5.  commenting with gc, gcc toggles commenting out current line, gc9j to toggle commenting out next 9 lines
--     use("numToStr/Comment.nvim")
--  6.  toggle file explorer with :NvimTreeToggle or space+e
--     use("nvim-tree/nvim-tree.lua")
--  7.  telescope: check the keybinds down below for how to search for a file/text in file dir and other..
--  

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
