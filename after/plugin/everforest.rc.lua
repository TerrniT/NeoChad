local status, theme = pcall(require, 'everforest')
if (not status) then
  return
end

theme.setup { comment_italics = true }
