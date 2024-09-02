return {
  -- custom noice.nvim
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup {
        presets = {
          command_palette = false, -- position the cmdline and popumenu together
        },
      }
    end,
  },
}
