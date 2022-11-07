local M = {}

M.config = function()

end

M.load = function(use)
  use {
    'neovim/nvimdev.nvim',
    requires = {'nvim-lua/plenary.nvim'}
    }
end

return M
