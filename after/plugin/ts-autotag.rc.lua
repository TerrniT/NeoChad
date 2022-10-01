local status, autotag = pcall(require, 'nvim-ts-autotag')
if (not status) then
  print("Autotag typescript not installed")
  return
end

autotag.setup {}
