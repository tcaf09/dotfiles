return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = { "html", "javascript", "typescript", "tsx", "vue", "svelte" },
    autotag = { enable = true },
  },
  config = function(_, opts)
    local config = require("nvim-treesitter.configs")
    config.setup(opts)
    require("nvim-ts-autotag").setup()
  end,
}
