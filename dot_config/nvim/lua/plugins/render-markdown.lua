return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    latex = { enabled = false }, -- snacks.image renders math
    checkbox = {
      enabled = true,
      unchecked = { icon = "   󰄱 " },
      checked = { icon = "   󰱒 " },
    },
    html = { comment = { conceal = false } },
    heading = {
      icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },
    },
  },
}
