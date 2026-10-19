return {
  "folke/snacks.nvim",
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
