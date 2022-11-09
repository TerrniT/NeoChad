local success, solarized = pcall(require, 'solarized')

if not success then
    return
end
local default_config = {
  mode = 'dark', -- dark(default)/light
  theme = 'vim', -- vim(default)/neovim/vscode
  transparent = false, -- false(default)/true
}

solarized.setup(default_config)
vim.cmd 'colorscheme solarized'


