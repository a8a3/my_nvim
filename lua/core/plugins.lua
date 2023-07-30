local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- horizontal movements helper
    {'phaazon/hop.nvim'},
	-- files tree
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v2.x",
        dependencies = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
	        "s1n7ax/nvim-window-picker"
        }
    },
    -- syntax highlighting
    {'nvim-treesitter/nvim-treesitter'},
    -- LSP support
    {'neovim/nvim-lspconfig'},
    -- color theme
    {'rebelot/kanagawa.nvim'},
    -- autocompletion
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/nvim-cmp'},
    -- mason
    {"williamboman/mason.nvim", build = ":MasonUpdate"},
    -- telescope (quick text search)
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    -- formatter
    {'jose-elias-alvarez/null-ls.nvim'},
    -- brackets auto pair
    {'windwp/nvim-autopairs'},
    -- buffline (shows buffers as tabs)
    {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
})
