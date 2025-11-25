-- return {
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "tokyonight-night",
--     },
--   },
-- }

return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("onedark").setup({
      -- Main options --
      style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false, -- Show/hide background
      term_colors = false, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      -- toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      -- toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = "bold",
        keywords = "bold",
        functions = "none",
        strings = "none",
        variables = "none",
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {}, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = false, -- use undercurl instead of underline for diagnostics
        background = false, -- use background color for virtual text
      },
    })
    -- Enable theme
    require("onedark").load()
  end,
}

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha", -- latte, frappe, macchiato, mocha
--       background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = true, -- disables setting the background color.
--       float = {
--         transparent = false, -- enable transparent floating windows
--         solid = false, -- use solid styling for floating windows, see |winborder|
--       },
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = false, -- Force no italic
--       no_bold = false, -- Force no bold
--       no_underline = false, -- Force no underline
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--       },
--       lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
--         virtual_text = {
--           errors = { "italic" },
--           hints = { "italic" },
--           warnings = { "italic" },
--           information = { "italic" },
--           ok = { "italic" },
--         },
--         underlines = {
--           errors = { "underline" },
--           hints = { "underline" },
--           warnings = { "underline" },
--           information = { "underline" },
--           ok = { "underline" },
--         },
--         inlay_hints = {
--           background = true,
--         },
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       default_integrations = true,
--       auto_integrations = false,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     })
--     require("catppuccin").load()
--   end,
-- }

-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000,
--   config = function()
--     require("onedarkpro").setup({
--       colors = {}, -- Override default colors or create your own
--       highlights = {}, -- Override default highlight groups or create your own
--       styles = { -- For example, to apply bold and italic, use "bold,italic"
--         types = "NONE", -- Style that is applied to types
--         methods = "NONE", -- Style that is applied to methods
--         numbers = "NONE", -- Style that is applied to numbers
--         strings = "NONE", -- Style that is applied to strings
--         comments = "NONE", -- Style that is applied to comments
--         keywords = "NONE", -- Style that is applied to keywords
--         constants = "NONE", -- Style that is applied to constants
--         functions = "bold", -- Style that is applied to functions
--         operators = "NONE", -- Style that is applied to operators
--         variables = "NONE", -- Style that is applied to variables
--         parameters = "NONE", -- Style that is applied to parameters
--         conditionals = "NONE", -- Style that is applied to conditionals
--         virtual_text = "NONE", -- Style that is applied to virtual text
--       },
--       filetypes = { -- Override which filetype highlight groups are loaded
--         c = true,
--         comment = true,
--         go = true,
--         html = true,
--         java = true,
--         javascript = true,
--         json = true,
--         latex = true,
--         lua = true,
--         markdown = true,
--         php = true,
--         python = true,
--         ruby = true,
--         rust = true,
--         scss = true,
--         toml = true,
--         typescript = true,
--         typescriptreact = true,
--         vue = true,
--         xml = true,
--         yaml = true,
--       },
--       plugins = { -- Override which plugin highlight groups are loaded
--         aerial = true,
--         barbar = true,
--         blink_cmp = true,
--         codecompanion = true,
--         copilot = true,
--         dashboard = true,
--         flash_nvim = true,
--         gitgraph_nvim = true,
--         gitsigns = true,
--         hop = true,
--         indentline = true,
--         leap = true,
--         lsp_saga = true,
--         lsp_semantic_tokens = true,
--         marks = true,
--         mini_diff = true,
--         mini_icons = true,
--         mini_indentscope = true,
--         mini_test = true,
--         neotest = true,
--         neo_tree = true,
--         nvim_cmp = true,
--         nvim_bqf = true,
--         nvim_dap = true,
--         nvim_dap_ui = true,
--         nvim_hlslens = true,
--         nvim_lsp = true,
--         nvim_navic = true,
--         nvim_notify = true,
--         nvim_tree = true,
--         nvim_ts_rainbow = true,
--         op_nvim = true,
--         packer = true,
--         persisted = true,
--         polygot = true,
--         rainbow_delimiters = true,
--         render_markdown = true,
--         startify = true,
--         telescope = true,
--         toggleterm = true,
--         treesitter = true,
--         trouble = true,
--         vim_ultest = true,
--         which_key = true,
--         vim_dadbod_ui = true,
--       },
--
--       options = {
--         cursorline = true, -- Use cursorline highlighting?
--         transparency = false, -- Use a transparent background?
--         terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
--         lualine_transparency = false, -- Center bar transparency?
--         highlight_inactive_windows = true, -- When the window is out of focus, change the normal background?
--       },
--     })
--     vim.cmd("colorscheme onedark_dark")
--   end,
-- }
