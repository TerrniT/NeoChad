local v = vim.api
local status, git = pcall(require, 'gitsigns')
if (not status) then
  print("Gitsigns not installed")
  return
end


git.setup {

}


v.nvim_set_keymap('n', 'gb', ':Gitsigns toggle_current_line_blame<Return>', { silent = true } )


