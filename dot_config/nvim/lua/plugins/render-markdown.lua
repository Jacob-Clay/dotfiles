return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    latex = {
      enabled = true,
      converter = "latex2text",
      inline = true, -- $...$ Unicode text
      block = false, -- $$...$$ -> left to snacks
    },
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
