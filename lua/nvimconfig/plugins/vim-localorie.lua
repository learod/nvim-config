return {
  "airblade/vim-localorie",
  keys = {
    { "<leader>lz", ":call localorie#translate()<CR>", { desc = "Translate" } },
    { "<leader>ldt", ":call localorie#display_translation()<CR>", { desc = "Display Translation" } },
    { "<leader>lq", ":call localorie#query()<CR>", { desc = "Query" } },
    { "<leader>lQ", ":call localorie#query_all()<CR>", { desc = "Query All" } },
    { "<leader>le", ":call localorie#expand_key()<CR>", { desc = "Expand Key" } },
    { "<leader>lE", ":call localorie#expand_key_all()<CR>", { desc = "Expand Key All" } },
    { "<leader>lR", ":call localorie#reload()<CR>", { desc = "Reload" } },
    { "<leader>lS", ":call localorie#save()<CR>", { desc = "Save" } },
  },
}
