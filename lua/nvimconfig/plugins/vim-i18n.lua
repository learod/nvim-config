return {
  "stefanoverna/vim-i18n",
  keys = {
    { "<leader>z", ":call I18nTranslateString()<CR>", { desc = "Translate" } },
    { "<leader>dt", ":call I18nDisplayTranslation()<CR>", { desc = "Display Translation" } },
  },
}
