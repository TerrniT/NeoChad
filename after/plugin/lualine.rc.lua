local status, lualine = pcall(require, 'lualine')
if (not status) then
  print("Lualine is not installed")
  return
end

lualine.setup {
  options = {
    theme = 'everforest'
  }
}

