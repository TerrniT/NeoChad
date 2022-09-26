local v = vim.api
local status, git = pcall(require, 'gitsigns')
if (not status) then
  print("Gitsigns not installed")
  return
end


git.setup {

}


v.nvim_set_keymap('n', 'gb', ':Gitsigns blame_line<Return>', { silent = true } )


