local v = vim.keymap
local status, toggleterm = pcall(require, "toggleterm")
if (not status) then
  print("Toggleterm not installed")
  return
end

toggleterm.setup{
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[tt]],
  hide_numbers = true, 
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  insert_mappings = true, 
  terminal_mappings = true,
  persist_size = true,
  persist_mode = true, 
  direction =  'horizontal',
  close_on_exit = true, 
  shell = "bash.exe", 
  auto_scroll = true, 
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}

