local v = vim.api
local status, tree = pcall(require, 'neo-tree')
if (not status) then
  print("Neo tree not installed")
  return
end

tree.setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  window = {
    position = "right",
    width = 25
  }
})

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

v.nvim_set_keymap('n', 'nt', ':Neotree<Return>', { silent = true })
v.nvim_set_keymap('n', 'nb', ':Neotree buffers<Return>', { silent = true })
v.nvim_set_keymap('n', 'ng', ':Neotree float git_status<Return>', { silent = true })
