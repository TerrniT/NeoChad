local status, browser = pcall(require, "web-tools")
if (not status) then
  print("Web tools is not installed")
  return
end


browser.setup({})

