vim.filetype.add({
  extension = {
    tmpl = function(path, bufnr)
      -- Get the filename without the .tmpl extension
      local base_name = path:gsub("%.tmpl$", ""):gsub("dot_", "."):gsub("private_", ""):gsub("executable_", "")
      -- Detect the filetype based on the base filename
      return vim.filetype.match({ filename = base_name }) or "text"
    end,
  },
})
