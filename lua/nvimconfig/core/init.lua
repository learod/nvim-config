require("nvimconfig.core.keymaps")
require("nvimconfig.core.options")

vim.cmd([[
  augroup AddNewlineOnSave
    autocmd!
    autocmd BufWritePre * :silent! %s/\n\+\%$//e | normal! Go
  augroup END
]])
