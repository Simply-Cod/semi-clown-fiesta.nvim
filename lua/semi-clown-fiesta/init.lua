local M = {}

function M.setup(opts)
  local settings = require "semi-clown-fiesta.settings"
  if opts then
    settings.set(opts)
  end
end

function M.load(opts)
  M.setup(opts)
  local settings = require "semi-clown-fiesta.settings"
  local opts = settings.opts

  vim.api.nvim_command "hi clear"
  if vim.fn.exists "syntax_on" then
    vim.api.nvim_command "syntax reset"
  end

  if opts.theme ~= "white" then
    vim.o.background = "dark"
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "semi-clown-fiesta"

  local util = require "semi-clown-fiesta.util"
  local palette = require("semi-clown-fiesta.palettes").get(opts.theme)
  local groups = require "semi-clown-fiesta.groups"

  for _, group in ipairs(groups) do
    group = group.highlight(palette, opts)
    util.initialise(group)
  end
end

return M
