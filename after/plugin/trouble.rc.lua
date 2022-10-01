local v = vim.keymap
local status, trouble = pcall(require, "trouble")
if (not status) then
  print("Trouble.nvim not installed")
  return
end

trouble.setup {
  position = "bottom",
  height = 6,
  icons = true,
  auto_open = true,
  auto_close = true,
  mode = "loclist"
}

v.set("n", "gx", "<cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>TroubleToggle loclist<CR>", { silent = true, noremap = true })

