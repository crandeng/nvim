local M = {}

M.config = function()
  local statusline = require('statusline')
  statusline.tabline = false
  statusline.lsp_diagnostics = false
  statusline.ale_diagnostics = true
end

M.load = function(use)
  use {
    'beauwilliams/statusline.lua',
    requires = {
      {
        'mhinz/vim-signify',
        setup = {updatetime = 100}
      }
    },
    config = M.config
  }
end

return M
