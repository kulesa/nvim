return {
  "tpope/vim-rails",
  ft = { "ruby", "eruby" }, -- Only load for Ruby and ERB files
  dependencies = {
    "tpope/vim-bundler",
    "tpope/vim-endwise"
  },
  config = function()
    -- Optional: Add any custom configuration here
    -- vim.g.rails_some_option = 1
  end,
}
