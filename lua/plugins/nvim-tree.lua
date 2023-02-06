require"nvim-tree".setup {
    view = {
        -- 宽度
        width = 28,
        -- 也可以 'right'
        side = "left",
        -- 隐藏根目录
        hide_root_folder = false,
        -- 自定义列表中快捷键
        mappings = {
            custom_only = true
            --[[ list = list_keys, ]]
        },
        -- 不显示行数
        number = false,
        relativenumber = false,
        -- 显示图标
        signcolumn = "yes"
    }
}
