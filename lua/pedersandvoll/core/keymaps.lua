vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap.set("i", "ii", "<ESC>", { desc = "Exit insert mode with ii" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- keymap.set("n", "<C-n>", "<cmd>:lua  MiniFiles.open()<CR>", { desc = "Open files" })            -- open file organization
keymap.set("n", "<C-n>", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

keymap.set("n", "<C-g>", ":Neogit<CR>", { desc = "Open neogit" })

keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>", { desc = "Open diffview" })
keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Close diffview" })

keymap.set("n", "<leader>yb", "<cmd>YankBank<CR>", { desc = "Open YankBank" })

keymap.set("n", "<M-o>", "o<Esc>=", { desc = "Make new line under" }) -- make split windows equal width & height
keymap.set("n", "<M-O>", "O<Esc>=", { desc = "Make new line over" })  -- make split windows equal width & height

keymap.set("n", "W", "<cmd>HopWord<CR>", { desc = "Go to any word in the buffer" })

keymap.set("n", "*", 'yiw:let @/=@"<CR>:set hls<CR>zz')

-- scissors keymaps
vim.keymap.set("n", "<leader>se", function() require("scissors").editSnippet() end)
vim.keymap.set({ "n", "x" }, "<leader>sa", function() require("scissors").addNewSnippet() end)
