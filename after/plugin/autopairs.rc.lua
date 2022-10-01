local status, autopairs = pcall(require, 'nvim-autopairs')
if (not status) then 
  print("Autopairs is not installed")
  return
end

autopairs.setup {
  disable_filetypes = {
    'TelescoperPrompt',
    'vim'
  }
}

