local k = vim.keymap
local keyset = vim.keymap.set
local api_keyset = vim.api.nvim_set_keymap
local opts = { silent = true }

-- Do not yank with x
k.set('n', 'x', '"_x')

-- Delete a word backward
k.set('n', 'dw', 'vb"_d')

-- Select all
k.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
k.set('n', 'te', ':tabedit<Return>', opts)

-- Split window
k.set('n', 'ss', ':split<Return><C-w>w', opts)
k.set('n', 'sv', ':vsplit<Return><C-w>w', opts)

-- Move window
k.set('n', '<Space>', '<C-w>w', opts)
k.set('', 'sh', '<C-w>h' )
k.set('', 'sk', '<C-w>k' )
k.set('', 'sj', '<C-w>j' )
k.set('', 'sl', '<C-w>l' )

-- Resize window
k.set('n', '<C-w><left>', '<C-w><')
k.set('n', '<C-w><right>', '<C-w>>')
k.set('n', '<C-w><up>', '<C-w>+')
k.set('n', '<C-w><down>', '<C-w>-')

-- Escape from terminal mode
k.set('n', '<ESC>', '<C-|><C-n>')

---- Plugin bindings
-- Bufferline
api_keyset('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', opts)
api_keyset('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', opts)
api_keyset('n', 'blk', ':bdelete<Return>', opts)

---- Coc-nvim
-- Trigger snippets
keyset('i', '<c-j>', '<Plug>(coc-snippets-expand-jump)')
keyset('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })

-- Navigate diagnostics
keyset('n', '[g', '<Plug>(coc-diagnostic-prev)', opts)
keyset('n', ']g', '<Plug>(coc-diagnostic-next)', opts)

-- GoTo code navigation
keyset('n', 'gd', '<Plug>(coc-definition)', opts)
keyset('n', 'gt', '<Plug>(coc-type-definition)', opts)
keyset('n', 'gi', '<Plug>(coc-implementation)', opts)
keyset('n', 'gr', '<Plug>(coc-references)', opts)

-- Git
api_keyset('n', 'gb', ':Gitsigns blame_line<Return>', opts)

-- Neotree
api_keyset('n', 'nt', ':Neotree<Return>', opts)
api_keyset('n', 'nb', ':Neotree buffers<Return>', opts)
api_keyset('n', 'ng', ':Neotree float git_status<Return>', opts)

-- Toggleterm.nvim
api_keyset('n', '\\', ':ToggleTermToggleAll<Return>', opts)
