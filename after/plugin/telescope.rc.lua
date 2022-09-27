local key = vim.keymap
local status_k, telescope = pcall(require, 'telescope')
if (not status_k) then return end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

function telescope_buffer_dir()
        return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
  mappings = {
    n = {
      ['q'] = actions.close
                        }
                }
        },
        extensions = {
                file_browser = {
                        theme = 'dropdown',
                        hijack_netrw = true,
                        mappings = {
                                ['i'] = {
                                        ['<C-w>'] = function()
                                               vim.cmd('normal vbd') 
                                        end,
                                },
                                ['n'] = {
                                        ['N'] = fb_actions.create,
                                        ['h'] = fb_actions.goto_parent_dir,
                                        ['/'] = function()
                                                vim.cmd('startinsert')
                                        end,
                                }
                        }
                }
        }
}

telescope.load_extension('file_browser')

local opts = { noremap = true, silent = true }

key.set('n', ';f', function()
        builtin.find_files({
                no_ignore = false,
                hidden = true
        })
end)

key.set('n', ';r', function()
        builtin.live_grep()
end)

key.set('n', ';t', function()
       builtin.help_tags() 
end)

key.set('n', ';;', function()
        builtin.resume()
end)

key.set('n', ';e', function()
       builtin.diagnostics()
end)

key.set('n', 'sf', function()
      telescope.extensions.file_browser.file_browser({
               path = "%:p:h",
               cwd = telescope_buffer_dir(),
               respect_gitignore = false,
               hidden = true,
               grouped = true,
               previewer = false,
               initital_mode = "normal",
    layout_config = { height = 40 }
       })
end)
  
