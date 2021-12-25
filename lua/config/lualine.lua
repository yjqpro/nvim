local function lsp()
    local icon = [[  LSP: ]]
    local msg = 'No Active LSP'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then return icon .. msg end
    for _, client in ipairs(clients) do
        local filetypes = client.config.filetypes
        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
            return icon .. client.name
        end
    end
    return icon .. msg
end

-- local gps = require("nvim-gps")

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        disabled_filetypes = {}
    },

    sections = {
        lualine_a = {'mode'},
        lualine_b = {{'branch'}, {'diff'}},
        -- lualine_c = {
        --     {'filename'}, {gps.get_location, condition = gps.is_available}
        -- },
        lualine_x = {
            {
                'diagnostics',
                sources = {'nvim_diagnostic'},
                color_error = "#BF616A",
                color_warn = "#EBCB8B",
                color_info = "#81A1AC",
                color_hint = "#88C0D0",
                symbols = {error = ' ', warn = ' ', info = ' '}
            }, {lsp}, {'encoding'}, {'fileformat'}
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
