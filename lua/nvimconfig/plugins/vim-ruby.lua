return {
  -- Ruby
  { "vim-ruby/vim-ruby" },
  { "tpope/vim-rails" },
  { "tpope/vim-rake" },
  { "tpope/vim-bundler" },
  { "tpope/vim-rbenv" },
  { "tpope/vim-rvm" },
  { "tpope/vim-rhubarb" },
  { "tpope/vim-endwise" },
  { "tpope/vim-haml" },
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "eruby.yml",
      command = "set filetype=yaml",
    })
  end,
}
