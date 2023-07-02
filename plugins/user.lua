return {
  -- you can also add new plugins here as well:
  -- add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "bufread",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "github/copilot.vim",
  lazy = false,
  {
    "timuntersberger/neogit",
    version = "*", -- use for stability; omit to use `main` branch for the latest features
    event = "verylazy",
    dependencies = {
      "sindrets/diffview.nvim",
    },
    config = function()
      require("neogit").setup {
        integrations = {
          diffview = true,
        },
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        Configuration here, or leave empty to use defaults
      })
      end,
    },
  },
}
