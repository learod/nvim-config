return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- local colors = {
    --   blue = "#65D1FF",
    --   green = "#3EFFDC",
    --   violet = "#FF61EF",
    --   yellow = "#FFDA7B",
    --   red = "#FF4A4A",
    --   fg = "#c3ccdc",
    --   bg = "#112638",
    --   inactive_bg = "#2c3043",
    -- }

    -- stylua: ignore
    local colors = {
      blue   = '#80a0ff',
      cyan   = '#79dac8',
      black  = '#080808',
      white  = '#c6c6c6',
      red    = '#ff5189',
      violet = '#d183e8',
      grey   = '#303030',
    }

    -- local my_lualine_theme = {
    --   normal = {
    --     a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.fg },
    --   },
    --   insert = {
    --     a = { bg = colors.green, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.fg },
    --   },
    --   visual = {
    --     a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.fg },
    --   },
    --   command = {
    --     a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.fg },
    --   },
    --   replace = {
    --     a = { bg = colors.red, fg = colors.bg, gui = "bold" },
    --     b = { bg = colors.bg, fg = colors.fg },
    --     c = { bg = colors.bg, fg = colors.fg },
    --   },
    --   inactive = {
    --     a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
    --     b = { bg = colors.inactive_bg, fg = colors.semilightgray },
    --     c = { bg = colors.inactive_bg, fg = colors.semilightgray },
    --   },
    -- }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
      },

      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.red } },

      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    -- configure lualine with modified theme
    -- lualine.setup({
    --   options = {
    --     theme = my_lualine_theme,
    --   },
    --   sections = {
    --     lualine_x = {
    --       {
    --         lazy_status.updates,
    --         cond = lazy_status.has_updates,
    --         color = { fg = "#ff9e64" },
    --       },
    --       { "encoding" },
    --       { "fileformat" },
    --       { "filetype" },
    --     },
    --   },
    -- })
    --
    require("lualine").setup({
      options = {
        theme = bubbles_theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {
          "%=", --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          "encoding",

          "filetype",
          "progress",
        },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      extensions = {},
    })
  end,
}
