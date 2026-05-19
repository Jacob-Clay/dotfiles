vim.filetype.add({
  extension = {
    tmpl = function(path, bufnr)
      -- Get the filename without the .tmpl extension
      local base_name = path:gsub("%.tmpl$", "")
      -- Detect the filetype based on the base filename
      return vim.filetype.match({ filename = base_name }) or "text"
    end,
  },
})
