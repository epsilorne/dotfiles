return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
    require('nvim-tree').setup({
      actions = {
        open_file = {
          quit_on_open = false,
        },
      },
      renderer = {
        root_folder_label = false,
      },
      view = {
        -- adaptive_size = false,
        -- float = {
        --   enable = true,
        --   open_win_config = {
        --     relative = 'editor',
        --     border = 'single',
        --     width = 40,
        --     height = 30,
        --     row = 1,
        --     col = 1,
        --   },
        -- },
        width = 25,
      },
    })
  end
}
