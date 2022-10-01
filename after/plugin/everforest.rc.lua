local status, theme = pcall(require, 'everforest')
if (not status) then
  print("Everforest is not installed")
  return
end

theme.setup { 
  comment_italics = true 
}

