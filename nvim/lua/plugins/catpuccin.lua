return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,    -- load immediately
  priority = 1000, -- make sure it's loaded before others
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        -- add other integrations if you use them
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
