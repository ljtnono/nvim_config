local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动安装更新软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])


return require("packer").startup(function(use)
    -- 配置git使用密钥clone加速
    git = {
       default_url_format = "git@github.com:%s"
    }
    -- 安装packer插件管理器
    use "wbthomason/packer.nvim"
    -- 主题
    use "folke/tokyonight.nvim"
    -- 状态栏
    use {
        "nvim-lualine/lualine.nvim",
        requires = { 
            "kyazdani42/nvim-web-devicons", 
            opt = true 
        }
    }
    -- 文件导航插件
    use {
        -- 文件导航插件
        "nvim-tree/nvim-tree.lua",
        requires = {
            -- 文件导航插件icon插件
            "nvim-tree/nvim-web-devicons",
        },
        tag = "nightly"
    }
    -- 使用ctrl-hjkl来移动光标到指定窗口
    use "christoomey/vim-tmux-navigator"
    -- 开始界面美化插件
    use {
        "mhinz/vim-startify"
    }

    -- lsp相关
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
        "neovim/nvim-lspconfig"
    }
    -- 自动补全
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/cmp-path" -- 文件路径

    use "numToStr/Comment.nvim" -- gcc和gc注释
    use "windwp/nvim-autopairs" -- 自动补全括号

    use "akinsho/bufferline.nvim" -- buffer分割线
    use "lewis6991/gitsigns.nvim" -- 左则git提示

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",  -- 文件检索
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end
)
