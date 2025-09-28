return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local autopairs = require("nvim-autopairs")

    autopairs.setup({
      disable_filetype = { "TelescopePrompt", "vim" },
      disable_in_macro = true,       -- disable when recording/executing macros
      disable_in_visualblock = false, -- allow in visual block mode
      ignored_next_char = "[%w%.]",  -- ignore alphanumeric and dot
      enable_moveright = true,       -- move past closing char
      enable_afterquote = true,      -- add pair after quote
      enable_check_bracket_line = true, -- don’t add pairs if already on same line
      map_cr = true,                 -- auto newline and close pairs
      map_bs = true,                 -- smart backspace
      fast_wrap = {                  -- alt-e wrap feature
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0, -- Offset from pattern match
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "Search",
        highlight_grey = "Comment",
      },
    })

    -- OPTIONAL: integrate with nvim-cmp if installed
    local ok, cmp = pcall(require, "cmp")
    if ok then
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  end,
}
