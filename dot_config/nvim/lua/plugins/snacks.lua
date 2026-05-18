return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    image = {
      enabled = true,
      doc = {
        enabled = true,
        inline = true,
        float = false,
      },
      conceal = function(lang, type)
        return type == "math"
      end,
    },
  },
}
