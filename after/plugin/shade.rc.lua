local status, shade = pcall(require, "shade")
if (not status) then
  print("Shade is not installed")
  return
end


shade.setup({
  overlay_opacity = 66,
  opacity_step = 1,
  keys = {
    brightness_up = '<C-Up>',
    brightness_down = '<C-Down>'
  }
})
