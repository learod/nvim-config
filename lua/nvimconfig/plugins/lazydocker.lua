return {
  "mgierada/lazydocker.nvim",
  cmd = {
    "Lazydocker",
  },
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    require("lazydocker").setup({})
  end,
  event = "BufRead", -- or any other event you might want to use.
  keys = {
    { "<leader>lD", "<cmd>Lazydocker<cr>", desc = "Lazy Docker" },
  },
}
