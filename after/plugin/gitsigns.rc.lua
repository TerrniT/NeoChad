local status, git = pcall(require, 'gitsigns')
if (not status) then
  print("Gitsigns not installed")
  return
end

git.setup {}



