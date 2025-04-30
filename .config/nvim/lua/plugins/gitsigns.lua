return {
  "lewis6991/gitsigns.nvim",   
  config = function()
    local gitsigns = require('gitsigns')

    gitsigns.setup {
      _on_attach_pre = function(bufnr, callback)
        if vim.fn.executable("yadm") == 1 then
          require("gitsigns-yadm").yadm_signs(callback, { bufnr = bufnr })
        else
          callback()
      end
    end,
    }

    vim.keymap.set("n", "<leader>d", function()
      gitsigns.preview_hunk() 
    end)
  end
}
