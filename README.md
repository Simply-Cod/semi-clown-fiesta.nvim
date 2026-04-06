# Semi Clown Fiesta

Semi Clown Fiesta is a fork of [No-Clown-Fiesta](https://github.com/aktersnurra/no-clown-fiesta.nvim) which is a minimal theme


## Usage

To enable this colorscheme:

```vim
colorscheme semi-clown-fiesta
```

```lua
vim.cmd[[colorscheme semi-clown-fiesta]]
```

To override the default settings you need to call setup before enabling the
colorscheme. semi-clown-fiesta will use these settings, unless you call setup
and override these.

```lua
require("semi-clown-fiesta").setup({
  theme = "dark", -- supported themes are: dark, dim, light
  transparent = false, -- Enable this to disable the bg color
  styles = {
    -- You can set any of the style values specified for `:h nvim_set_hl`
    comments = {},
    functions = {},
    keywords = {},
    lsp = {},
    match_paren = {},
    type = {},
    variables = {},
  },
})
```

### Installation


```lua
local opts = {
  theme = "dark",
  styles = {
    type = { bold = true },
    lsp = { underline = false },
    match_paren = { underline = true },
  },
}

local function config()
  local plugin = require "semi-clown-fiesta"
  return plugin.load(opts)
end

return {
  "Simply-Cod/semi-clown-fiesta.nvim",
  priority = 1000,
  config = config,
  lazy = false,
}
```


## Themes

This plugin supports three different themes:
- dark = default dark theme
- dim = low contrast dark theme
- light = light version (still under development)

## Supported Plugins

- Alpha
- Dadbod-ui
- Dap UI
- Git
- Hop
- LSP
- Lazy
- Leap
- Lir
- Lualine
- Markdown
- Mason
- Neogit
- Neotest
- NvimCmp
- BlinkCmp
- NvimTree
- Orgmode
- StatusLine
- Telescope
- Treesitter
- WhichKey
- mini
    - statusline
    - files
- DiffView

### Lualine

Enable theme by setting the `theme` options in the lualine options, e.g.:

```fnl
(local opts {:options {:theme :semi-clown-fiesta}})
```
