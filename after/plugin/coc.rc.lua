local v = vim
local keyset = vim.keymap.set
local opts = { silent = true, noremap = true, expr = true }
--
-- Highlight the symbol and its references when holding the cursor.
v.api.nvim_create_augroup("CocGroup", {})
v.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

v.opt.signcolumn = "yes"

-- Auto-complete
function _G.check_back_space()
  local col = v.fn.col('.') -1
  return col ==0 or v.fn.getline('.'):sub(col, col):match('%s')
end

v.api.nvim_set_keymap('i', '<S-j>', 'coc#pum#visible() ?coc#pum#next(1) : v:lua.check_back_space() ? "<S-j>" :coc#refresh() ', opts)
v.api.nvim_set_keymap('i', '<S-k>', [[coc#pum#visible() ?coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make 'enter' to accept selected completion item or notify coc.nvim to format
v.api.nvim_set_keymap('i', '<cr>', [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)


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

-- Show documentation in preview window
function _G.show_docs()
    local cw = v.fn.expand('<cword>')
    if v.fn.index({'vim', 'help'}, v.bo.filetype) >= 0 then
        v.api.nvim_command('h ' .. cw)
    elseif v.api.nvim_eval('coc#rpc#ready()') then
        v.fn.CocActionAsync('doHover')
    else
        v.api.nvim_command('!' .. v.o.keywordprg .. ' ' .. cw)
    end
end

keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

