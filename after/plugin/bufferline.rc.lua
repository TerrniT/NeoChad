local status, bufferline = pcall(require, 'bufferline')
if (not status) then
  print("Bufferline is not installed")
  return
end


bufferline.setup {}




