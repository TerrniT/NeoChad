local status, shade = pcall(require, "shade")
if (not status) then
  print("Shade is not installed")
  return
end


shade.setup({
  overlay_opacity = 45,
  opacity_step = 1,
  keys = {
    toggle = '<C-Up>'
  }
})
