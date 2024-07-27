-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- local mouse = vim.opt.mouse:get() -- Get the current mouse setting
local mouse = 'a'

local function prep_copy()
  -- Toggle the mouse setting
  if mouse == 'a' then
    vim.cmd('set mouse=')
    mouse = ''
  else
    vim.cmd('set mouse=a')
    mouse = 'a'
  end
  vim.cmd('set number!')
  vim.cmd('set relativenumber!')
  vim.cmd('IBLToggle')
  vim.cmd('Gitsigns toggle_signs')
  vim.cmd('lua LazyVim.toggle.diagnostics()')
  -- vim.cmd('Neotree toggle')

end

-- Create the keymap to trigger the function
vim.keymap.set('n', '<leader>uc', prep_copy, { desc = 'Toggle settings: mouse, Neotree, line numbers, indent blank line, and gitsigns' })
