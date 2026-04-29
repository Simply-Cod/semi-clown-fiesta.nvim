local M = {}

function M.highlight(palette, opts)
  return {
    markdownBlockquote = { fg = palette.accent },
    markdownBold = { fg = palette.yellow, bold = true },
    markdownCode = { fg = palette.green },
    markdownCodeBlock = { fg = palette.green },
    markdownCodeDelimiter = { fg = palette.green },
    markdownH1 = { fg = palette.cyan },
    markdownH2 = { fg = palette.blue },
    markdownH3 = { fg = palette.blue },
    markdownH4 = { fg = palette.blue },
    markdownH5 = { fg = palette.blue },
    markdownH6 = { fg = palette.blue },
    markdownHeadingDelimiter = { fg = palette.red },
    markdownHeadingRule = { fg = palette.accent },
    markdownId = { fg = palette.purple },
    markdownIdDeclaration = { fg = palette.blue },
    markdownIdDelimiter = { fg = palette.light_gray },
    markdownLinkDelimiter = { fg = palette.light_gray },
    markdownItalic = { italic = true },
    markdownLinkText = { fg = palette.blue },
    markdownListMarker = { fg = palette.red },
    markdownOrderedListMarker = { fg = palette.red },
    markdownRule = { fg = palette.accent },
    markdownUrl = { fg = palette.cyan, underline = true },

    ["@markup.heading.1.markdown"] = { fg = palette.cyan, bold = true },
    ["@markup.heading.2.markdown"] = { fg = palette.blue, bold = true },
    ["@markup.heading.3.markdown"] = { fg = palette.gray_blue, bold = true },
    ["@markup.heading.4.markdown"] = { fg = palette.gray_blue_comp, bold = true },
    ["@markup.heading.5.markdown"] = { fg = palette.blue, bold = true },
    ["@markup.heading.6.markdown"] = { fg = palette.blue, bold = true },
    ["@markup.strong.markdown_inline"] = { fg = palette.yellow, bold = true },
  }
end

return M
