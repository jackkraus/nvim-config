return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
    -- Other
    { "L3MON4D3/LuaSnip" },        -- Snippet tool
    { "rafamadriz/friendly-snippets" },  -- List of snippets
    { "hrsh7th/nvim-cmp" },        -- The completion plugin
    { "hrsh7th/cmp-buffer" },      -- buffer completions
    { "hrsh7th/cmp-path" },        -- path completions
    { "hrsh7th/cmp-cmdline" },     -- cmdline completions
    { "saadparwaiz1/cmp_luasnip" },-- Compatibility
    { "lervag/vimtex" },           -- LaTeX compiling
    { "nvim-lua/plenary.nvim" },   -- Extra functions


  -- the colorscheme should be available when starting Neovim
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  }, 

  -- telescope
   {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
}
