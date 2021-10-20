-- 打开文件恢复上一次光标所在位置
vim.cmd([[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |  exe "normal! g`\"" | endif
]])
