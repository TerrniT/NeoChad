local k = vim.keymap
local v = vim.api
local keyset = vim.keymap.set
-- Do not yank with x
k.set('n', 'x', '"_x')

-- Delete a word backward
k.set('n', 'dw', 'vb"_d')

-- Select all

k.set('n', '<C-a>', 'gg<S-v>G')
-- New tab
k.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window
k.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
k.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
k.set('n', '<Space>', '<C-w>w', { silent = true })
k.set('', 'sh', '<C-w>h' )
k.set('', 'sk', '<C-w>k' )
k.set('', 'sj', '<C-w>j' )
k.set('', 'sl', '<C-w>l' )

-- Resize window
k.set('n', '<C-w><left>', '<C-w><' )
k.set('n', '<C-w><right>', '<C-w>>' )
k.set('n', '<C-w><up>', '<C-w>+' )
k.set('n', '<C-w><down>', '<C-w>-' )

-- Escape from terminal mode
k.set('n', '<ESC>', '<C-|><C-n>' )

-- Plugin bindings

-- Bufferline
v.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', { silent = true } )
v.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', { silent = true } )
v.nvim_set_keymap('n', 'blk', ':bdelete<Return>', { silent = true } )

-- Coc-nvim
-- Trigger snippets
keyset('i', '<c-j>', '<Plug>(coc-snippets-expand-jump)')
keyset('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })

-- Navigate diagnostics
keyset('n', '[g', '<Plug>(coc-diagnostic-prev)', { silent = true })
keyset('n', ']g', '<Plug>(coc-diagnostic-next)', { silent = true })


-- GoTo code navigation
keyset('n', 'gd', '<Plug>(coc-definition)', { silent = true })
keyset('n', 'gt', '<Plug>(coc-type-definition)', { silent = true })
keyset('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
keyset('n', 'gr', '<Plug>(coc-references)', { silent = true })

-- Git
v.nvim_set_keymap('n', 'gb', ':Gitsigns blame_line<Return>', { silent = true } )

-- Neotree
v.nvim_set_keymap('n', 'nt', ':Neotree<Return>', { silent = true })
v.nvim_set_keymap('n', 'nb', ':Neotree buffers<Return>', { silent = true })
v.nvim_set_keymap('n', 'ng', ':Neotree float git_status<Return>', { silent = true })

-- Toggleterm.nvim

v.nvim_set_keymap('n', '\\', ':ToggleTermToggleAll<Return>', { silent = true } )
