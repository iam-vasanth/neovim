 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#000000',
    base01 = '#131313',
    base02 = '#1e1e1e',
    base03 = '#919191',
    base04 = '#c6c6c6',
    base05 = '#e2e2e2',
    base06 = '#e2e2e2',
    base07 = '#e2e2e2',
    base08 = '#ffb4ab',
    base09 = '#e2e2e2',
    base0A = '#c6c6c6',
    base0B = '#ffffff',
    base0C = '#474747',
    base0D = '#474747',
    base0E = '#ababab',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  local colors = {
    bg = '#000000',
    fg = '#e2e2e2',
    primary = '#ffffff',
    surface1 = '#131313',
  }
  local lualine_ok, lualine = pcall(require, 'lualine')
  if lualine_ok then
    lualine.setup({
      options = {
        theme = {
          normal = {
            a = { bg = colors.primary, fg = colors.bg, gui = 'bold' },
            b = { bg = colors.surface1, fg = colors.fg },
            c = { bg = colors.bg, fg = colors.fg },
          },
          inactive = {
            a = { bg = colors.surface1, fg = colors.fg },
            b = { bg = colors.surface1, fg = colors.fg },
            c = { bg = colors.bg, fg = colors.fg },
          },
        },
      },
    })
  end

  -- Telescope
  hi('TelescopeNormal',         { fg = '#e2e2e2',          bg = '#000000' })
  hi('TelescopeBorder',         { fg = '#919191',             bg = '#000000' })
  hi('TelescopePromptNormal',   { fg = '#e2e2e2',          bg = '#000000' })
  hi('TelescopePromptBorder',   { fg = '#919191',             bg = '#000000' })
  hi('TelescopePromptPrefix',   { fg = '#ffffff',             bg = '#000000' })
  hi('TelescopePromptCounter',  { fg = '#c6c6c6',  bg = '#000000' })
  hi('TelescopePromptTitle',    { fg = '#000000',             bg = '#ffffff' })
  hi('TelescopePreviewTitle',   { fg = '#000000',             bg = '#c6c6c6' })
  hi('TelescopeResultsTitle',   { fg = '#000000',             bg = '#e2e2e2' })
  hi('TelescopeSelection',      { fg = '#e2e2e2',          bg = '#1e1e1e' })
  hi('TelescopeSelectionCaret', { fg = '#ffffff',             bg = '#1e1e1e' })
  hi('TelescopeMatching', { fg = '#ffffff', bold = true })

  -- Snacks dashboard
  hi('SnacksDashboardHeader',  { fg = '#474747', bg = '#000000' })
  hi('SnacksDashboardDesc',    { fg = '#e2e2e2',      bg = '#000000' })
  hi('SnacksDashboardIcon',    { fg = '#1b1b1b',      bg = '#000000' })
  hi('SnacksDashboardKey',     { fg = '#ffb4ab',           bg = '#000000' })
  hi('SnacksDashboardFooter',  { fg = '#919191',         bg = '#000000' })
  hi('SnacksDashboardTitle',   { fg = '#e2e2e2',      bg = '#000000', bold = true })
  hi('SnacksDashboardNormal',  { fg = '#e2e2e2',      bg = '#000000' })
  hi('SnacksDashboardDir',     { fg = '#474747', bg = '#000000' })
  hi('SnacksDashboardFile',    { fg = '#e2e2e2',      bg = '#000000' })
  hi('SnacksDashboardSpecial', { fg = '#1b1b1b',      bg = '#000000' })

-- Neo-tree
  hi('NeoTreeNormal',       { fg = '#e2e2e2', bg = '#000000' })
  hi('NeoTreeNormalNC',     { fg = '#e2e2e2', bg = '#000000' })
  hi('NeoTreeWinSeparator', { fg = '#919191', bg = '#000000' })

  -- Snacks explorer
  hi('SnacksNormal',       { fg = '#e2e2e2', bg = '#000000' })
  hi('SnacksNormalNC',     { fg = '#e2e2e2', bg = '#000000' })
  hi('SnacksWinBar',       { fg = '#e2e2e2', bg = '#000000' })

  -- Generic window separators / statusline fallback
  hi('WinSeparator', { fg = '#919191' })
  hi('StatusLine',   { fg = '#e2e2e2', bg = '#000000' })
  hi('StatusLineNC', { fg = '#919191',    bg = '#000000' })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
