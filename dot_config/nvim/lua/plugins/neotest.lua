return {
  "nvim-neotest/neotest",
  opts = {
    adapters = {
      ["neotest-python"] = {
        args = { "--durations=0", "--durations-min=0" },
      },
    },
  },
}
