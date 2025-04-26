return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        -- mode = "buffers",
        offsets = {
          {
            filetype = "NvimTree",
            text = "we get it you use vim",
            text_align = "center",
            separator = false,
            padding = 0,
          },
        },
      },
      highlights = {
        background = {
          -- bg = "none", 
        },
        fill = {
          bg = "none",
        },
      },
    })

    vim.keymap.set("n", "<Tab>", function()
      vim.cmd('BufferLineCycleNext')
    end, {})
    vim.keymap.set("n", "<S-Tab>", function()
      vim.cmd('BufferLineCyclePrev')
    end, {})
  end
}
