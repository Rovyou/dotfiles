require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "ellisonleao/gruvbox.nvim"
	use 'nvim-tree/nvim-tree.lua'
    	use 'nvim-tree/nvim-web-devicons'
end)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.wo.number = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
--vim.cmd('autocmd BufEnter * NvimTreeToggle')
--vim.cmd('autocmd BufEnter * lua vim.api.nvim_command("wincmd w")')

--function my_function()
--    local result = some_calculation()
--    return result
--end

-- vim.cmd('autocmd BufEnter * if bufname("%") == "" | NvimTreeToggle | endif')
