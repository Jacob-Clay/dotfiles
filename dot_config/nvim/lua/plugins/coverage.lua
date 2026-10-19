return {
  "andythigpen/nvim-coverage",
  version = "*",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "Coverage", "CoverageLoad", "CoverageToggle", "CoverageSummary" },
  keys = {
    {
      "<leader>tC",
      function()
        vim.notify("Running tests with coverage…")
        vim.system({ "uv", "run", "python", "-m", "pytest", "--cov", "-q" }, { text = true }, function(result)
          vim.schedule(function()
            if result.code == 0 then
              vim.notify("Tests passed")
            else
              -- show the end of pytest's output so you can see what failed
              local lines = vim.split(result.stdout or "", "\n", { trimempty = true })
              local tail = table.concat(vim.list_slice(lines, math.max(1, #lines - 15)), "\n")
              vim.notify("Tests failed\n" .. tail, vim.log.levels.WARN)
            end
            require("coverage").load(true) -- true = show the signs
          end)
        end)
      end,
      desc = "Run tests with coverage",
    },
  },
  opts = {
    auto_reload = true,
    lang = {
      python = {
        coverage_command = "uv run coverage json --fail-under=0 -q -o -",
      },
    },
  },
}
