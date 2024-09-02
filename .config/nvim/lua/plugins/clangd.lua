return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = function(_, opts)
      opts.config = vim.tbl_deep_extend("keep", opts, {
        clangd = {
          capabilities = {
            offsetEncoding = "utf-8",
          },
          cmd = {
            "/usr/bin/clangd-18",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
            [[--query-driver=/usr/bin/clang-18,
              /usr/bin/clang++-18,
            ]],
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },
      })
    end,
  },
  {
    "nvim-cmp",
    opts = function(_, opts)
      opts.sorting = {
        comparators = {
          require "clangd_extensions.cmp_scores",
        },
      }
    end,
  },
}
