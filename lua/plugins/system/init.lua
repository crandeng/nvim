local M = {}

M.load = function(use)
  require('plugins.system.options').load(use)
  require('plugins.system.telescope').load(use)
  require('plugins.system.statusline').load(use)
  require('plugins.system.neovim-dev').load(use)
  require('plugins.system.theme').load(use)
end

return M
