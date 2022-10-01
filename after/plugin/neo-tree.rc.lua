local status, tree = pcall(require, 'neo-tree')
if (not status) then
  print("Neotree not installed")
  return
end

tree.setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  window = {
    position = "right",
    width = 30
  }
})

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

