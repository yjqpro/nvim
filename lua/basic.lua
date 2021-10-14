local set = vim.opt
local wo = vim.wo

-- 显示行号
set.number = true

-- 显示相对行号
set.relativenumber = true

-- 终端显示真彩色
set.termguicolors = true

-- 设置 Backspace 键模式
set.backspace = 'eol,start,indent'

-- 自动缩进
set.autoindent = true

-- 打开 C/C++ 语言缩进优化
set.cindent = true

-- Windows 禁用ALT操作菜单(使得 ATL 可以用到 Vim 里)
set.winaltkeys = 'no'

-- 关闭自动换行
wo.wrap = false

-- 打开功能键超时检测 (终端下功能键为一串 ESC 开头的字符串)
set.ttimeout = true

-- 功能键超时检测 50 毫秒
set.ttimeoutlen = 50

-- 显示光标位置
set.ruler = true

--------------------------------------------------------------------------------
-- 搜索设置
--------------------------------------------------------------------------------

-- 搜索时忽略大小写
set.ignorecase = true

-- 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set.smartcase = true

-- 高亮搜索内容
set.hlsearch = true

-- 查找输入时动态增量显示查找结果
set.incsearch = true

--------------------------------------------------------------------------------
-- 编码设置
--------------------------------------------------------------------------------

if vim.fn.has('autocmd') then
	-- 内部工作编码
	set.encoding = 'utf-8'

	-- 文件默认编码
	set.fileencoding = 'utf-8'

	-- 打开文件时自动尝试下面顺序的编码
	set.fileencodings='ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1'
end

-- 显示匹配括号
set.showmatch = true

-- 显示括号匹配时间
set.matchtime = 2

-- 允许下方显示目录
set.wildmenu = true

-- 延迟绘制(提升性能)
set.lazyredraw = true

-- 设置错误格式
set.errorformat:append{'[%f:%l] -> %m','[%f:%l]:%m'}

-- 设置分隔符可视
set.listchars = {tab = '| ', trail = '.', extends = '>', precedes = '<'}

-- 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件
-- 或者 Vim 当前目录包含 .tags 文件
set.tags = {'./.tags;', '.tags'}


-- 如遇Unicode值大于255的文本，不必等到空格再折行
set.formatoptions = set.formatoptions + 'm'

-- 合并两行中文时，不在中间加空格
set.formatoptions = set.formatoptions + 'B'

-- 文件换行符， 默认使用unix换行符
set.fileformats = 'unix,dos,mac'

--------------------------------------------------------------------------------
-- 文件搜索和补全时忽略下面扩展名
--------------------------------------------------------------------------------
set.suffixes = '.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class'

set.wildignore = '*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib'
set.wildignore = set.wildignore + '*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex'
set.wildignore = set.wildignore + '*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz'
set.wildignore = set.wildignore + '*DS_Store*,*.ipch'
set.wildignore = set.wildignore + '*.gem'
set.wildignore = set.wildignore + '*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso'
set.wildignore = set.wildignore + '*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**'
set.wildignore = set.wildignore + '*/.nx/**,*.app,*.git,.git'
set.wildignore = set.wildignore + '*.wav,*.mp3,*.ogg,*.pcm'
set.wildignore = set.wildignore + '*.mht,*.suo,*.sdf,*.jnlp'
set.wildignore = set.wildignore + '*.chm,*.epub,*.pdf,*.mobi,*.ttf'
set.wildignore = set.wildignore + '*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc'
set.wildignore = set.wildignore + '*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps'
set.wildignore = set.wildignore + '*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu'
set.wildignore = set.wildignore + '*.gba,*.sfc,*.078,*.nds,*.smd,*.smc'
set.wildignore = set.wildignore + '*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android'
