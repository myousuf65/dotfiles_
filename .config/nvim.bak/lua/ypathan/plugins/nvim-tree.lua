return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("nvim-tree").setup {
      git = {
        enable = false
      }
    }

    local keymap = vim.keymap

    keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
  end,
}
