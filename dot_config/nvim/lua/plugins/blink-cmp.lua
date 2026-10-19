return {
  "saghen/blink.cmp",
  enabled = true,
  opts = function(_, opts)
    opts.keymap = {
      preset = "none",

      ["<CR>"] = { "accept", "fallback" },
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },

      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<C-y>"] = { "select_and_accept", "fallback" },
    }

    opts.completion = vim.tbl_deep_extend("force", opts.completion or {}, {
      list = {
        selection = {
          preselect = function()
            return vim.bo.filetype ~= "markdown"
          end,
        },
      },
    })
  end,
}
