local M = {}

function M.highlight(palette, opts)
    return {

        -- mini.statusline
        MiniStatuslineFilename = { fg = palette.light_gray, bg = palette.bg },
        MiniStatuslineDevinfo = { fg = palette.medium_gray, bg = palette.bg },
        MiniStatuslineFileinfo = { fg = palette.medium_gray, bg = palette.bg },
        MiniStatuslineInactive = { fg = palette.gray, bg = palette.bg },

        -- mini.files
        MiniFilesBorder = { fg = palette.fg },
        MiniFilesBorderModified = { bg = palette.sign_change },
        MiniFilesCursorLine = { bg = palette.alt_bg },
        MiniFilesDirectory = { fg = palette.blue },
        MiniFilesFile = { fg = palette.fg },
        MiniFilesNormal = { fg = palette.fg, bg = palette.bg },
        MiniFilesTitle = { fg = palette.fg },
        MiniFilesTitleFocused = { fg = palette.cyan },
    }
end

return M
