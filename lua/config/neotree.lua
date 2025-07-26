local configs = require("neo-tree")
configs.setup {
    filesystem = {
        follow_current_file = {
            enabled = true
        },
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = true,
            hide_gitignored = false,
        }
    }
}

