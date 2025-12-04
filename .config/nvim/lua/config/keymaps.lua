vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gt", function()
  local filepath = vim.fn.expand("%:p")
  local tags = "json"
  local struct_name = nil

  for i = vim.fn.line(".") - 1, 1, -1 do
    local line = vim.fn.getline(i)
    struct_name = line:match("^%s*type%s+([%w_]+)%s+struct")
    if struct_name then
      break
    end
  end

  if not struct_name then
    vim.notify("Struct name not found", vim.log.levels.ERROR)
    return
  end

  local cmd = string.format("gomodifytags -file %s -struct %s -add-tags %s -w", filepath, struct_name, tags)
  local result = vim.fn.system(cmd)

  if vim.v.shell_error == 0 then
    vim.cmd("edit!")
    vim.notify("Added JSON tags to struct " .. struct_name, vim.log.levels.INFO)
  else
    vim.notify("gomodifytags error:\n" .. result, vim.log.levels.ERROR)
  end
end, { desc = "Add JSON tags to struct", silent = true })
