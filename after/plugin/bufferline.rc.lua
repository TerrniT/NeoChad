local v = vim.api
local status, bufferline = pcall(require, 'bufferline')
if (not status) then
  print("Bufferline is not installed")
  return
end


bufferline.setup {}

v.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', { silent = true } )
v.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', { silent = true } )
v.nvim_set_keymap('n', 'blk', ':bdelete<Return>', { silent = true } )



