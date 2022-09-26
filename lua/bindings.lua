local k = vim.keymap

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


