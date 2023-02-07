-- 设置引导键
vim.g.mapleader = " "

local keymap = vim.keymap
---------- 插入模式 ----------
keymap.set("i", "kj", "<ESC>")


---------- 视觉模式 ----------
-- 单行或多行移动
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")


---------- 正常模式 ----------
---------- 窗口相关 ----------
-- 水平分屏
keymap.set("n", "<leader>sv", "<C-w>v") 
-- 垂直分屏
keymap.set("n", "<leader>sh", "<C-w>s")

---------- 插件 ----------
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<leader>h", ":bprevious<CR>")
keymap.set("n", "<leader>l", ":bnext<CR>")

-- telescope
local telescopeBuiltin = require("telescope.builtin")
keymap.set('n', '<leader>ff', telescopeBuiltin.find_files, {})
keymap.set('n', '<leader>fg', telescopeBuiltin.live_grep, {})
keymap.set('n', '<leader>fb', telescopeBuiltin.buffers, {})
keymap.set('n', '<leader>fh', telescopeBuiltin.help_tags, {})
