local M = {}

M.config = function ()
  vim.cmd[[colorscheme tokyonight]]
end

M.load = function(use)
    use {
    'folke/tokyonight.nvim',
    config = M.config
    }
end

return M
