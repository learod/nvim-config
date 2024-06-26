return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    vim.api.nvim_set_hl(0, "HlRedGroup", { fg = "#fd0e35" })
    dashboard.section.header.opts.hl = "HlRedGroup"
    dashboard.section.header.val = {
      "                  ⣀⣤⣴⣾⣿⣿⣿⡛⠛⠛⠛⠛⣻⣿⠿⠛⠛⠶⣤⡀",
      "              ⣀⣴⠾⠛⠉⠁    ⠙⣿⣶⣤⣶⣟⣉     ⠈⠻⣦",
      "           ⣀⣴⠟⠋          ⢸⣿⠟⠻⣯⡙⠛⠛⠛⠶⠶⠶⢶⣽⣇",
      "         ⣠⡾⠋⠁            ⣾⡿  ⠈⠛⢦⣄      ⣿",
      "       ⣠⡾⠋  NEOVIM      ⣰⣿⠃     ⠙⠷⣤⡀   ⣿",
      "     ⢀⡾⠋               ⣰⣿⡏        ⠈⠻⣦⣄⢠⣿",
      "    ⣰⠟⠁ Ruby on Rails ⣴⣿⣿⣁⣀⣠⣤⣤⣤⣤⣤⣤⣤⣴⠶⠿⣿⡏",
      "   ⣼⠏               ⢀⣾⣿⠟⣿⠿⣯⣍⠁        ⣰⣿⡇",
      " ⢀⣼⠋              ⢀⣴⣿⠟⠁ ⢸⡇ ⠙⠻⢦⣄⡀    ⢠⡿⣿⡇",
      "⢀⣾⡏             ⢀⣴⣿⠟⠁    ⣿    ⠉⠻⢶⣄⡀⣰⡟ ⣿⠃",
      "⣾⣿⠁           ⣠⣶⡿⠋⠁      ⢹⡇      ⠈⣿⡏ ⢸⣿",
      "⣿⣿⡆       ⢀⣠⣴⣿⡿⠋         ⠈⣿     ⢀⡾⠋⣿ ⢸⣿",
      "⣿⠸⣿⣶⣤⣤⣤⣤⣶⣾⠿⠿⣿⣿⠶⣤⣤⣀⡀       ⢹⡇   ⣴⠟⠁ ⣿⡀⢸⣿",
      "⣿⢀⣿⣟⠛⠋⠉⠁   ⢰⡟⠹⣧ ⠈⠉⠛⠻⠶⢦⣤⣀⡀ ⠈⣿ ⣠⡾⠃   ⢸⡇⢸⡇",
      "⣿⣾⣿⢿⡄      ⣿⠁ ⠘⣧       ⠉⠙⠛⠷⣿⣿⡋     ⠸⣇⣸⡇",
      "⣿⠃⣿⠈⢿⡄    ⣸⠇   ⠘⣧       ⢀⣤⠾⠋⠈⠻⣦⡀    ⣿⣿⡇",
      "⣿⢸⡏ ⠈⣷⡀  ⢠⡿     ⠘⣧⡀   ⣠⡴⠟⠁    ⠈⠻⣦⣀  ⢿⣿⠁",
      "⢻⣾⡇  ⠘⣷  ⣼⠃      ⠘⣷⣠⣴⠟⠋          ⠙⢷⣄⢸⣿",
      " ⠻⣧⡀  ⠘⣧⣰⡏    ⢀⣠⣤⠶⠛⠉⠛⠛⠛⠛⠛⠛⠻⢶⣶⣶⣶⣶⣶⣤⣤⣽⣿⣿",
      "  ⠈⠛⠷⢦⣤⣽⣿⣥⣤⣶⣶⡿⠿⠿⠶⠶⠶⠶⠾⠛⠛⠛⠛⠛⠛⠛⠋⠉⠉⠉⠉⠉⠉⠁   ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
