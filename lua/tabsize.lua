local o = vim.opt
local bo = vim.bo

-- 设置缩进宽度
o.shiftwidth = 2
bo.shiftwidth = 2

-- 设置 TAB 宽度
o.tabstop = 2
bo.tabstop = 2

-- 禁止展开 tab 
o.expandtab = false
bo.expandtab = false

-- 如果后面设置了 expandtab 那么展开 tab 为多少字符
o.softtabstop = 2
bo.softtabstop = 2

