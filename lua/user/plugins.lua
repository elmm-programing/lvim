-- Additional Plugins
lvim.plugins = {
  "catppuccin/nvim",
  { "mfussenegger/nvim-dap" },
  { "mfussenegger/nvim-jdtls" },
  {
    'mrjones2014/smart-splits.nvim',
    init = function()
      -- recommended mappings
      -- resizing splits
      -- these keymaps will also accept a range,
      -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
      -- vim.keymap.set('n', '<C-h>', require('smart-splits').resize_left)
      -- vim.keymap.set('n', '<C-j>', require('smart-splits').resize_down)
      -- vim.keymap.set('n', '<C-k>', require('smart-splits').resize_up)
      -- vim.keymap.set('n', '<C-l>', require('smart-splits').resize_right)
      -- moving between splits
      vim.keymap.set('n', '<leader>h', require('smart-splits').move_cursor_left)
      vim.keymap.set('n', '<leader>j', require('smart-splits').move_cursor_down)
      vim.keymap.set('n', '<leader>k', require('smart-splits').move_cursor_up)
      vim.keymap.set('n', '<leader>l', require('smart-splits').move_cursor_right)
      vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous)
      -- swapping buffers between windows
      -- vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
      -- vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
      -- vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
      -- vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)
    end
  },
  {
    "microsoft/vscode-js-debug",
    -- After install, build it and rename the dist directory to out
    build = "npm install --legacy-peer-deps --no-save && npx gulp vsDebugServerBundle && rm -rf out && mv dist out",
    version = "1.*",
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("dap-vscode-js").setup({
        -- Path of node executable. Defaults to $NODE_PATH, and then "node"
        -- node_path = "node",

        -- Path to vscode-js-debug installation.
        debugger_path = "/home/elmm/.local/share/lunarvim/site/pack/lazy/opt/vscode-js-debug/out/",

        -- Command to use to launch the debug server. Takes precedence over "node_path" and "debugger_path"
        debugger_cmd = { "node", "/home/elmm/.local/share/lunarvim/site/pack/lazy/opt/vscode-js-debug/out/src/vsDebugServer.js" },
        -- which adapters to register in nvim-dap
        adapters = {
          "chrome",
          "pwa-node",
          "pwa-chrome",
          "pwa-msedge",
          "pwa-extensionHost",
          "node-terminal",
        },

        -- Path for file logging
        -- log_file_path = "(stdpath cache)/dap_vscode_js.log",

        -- Logging level for output to file. Set to false to disable logging.
        -- log_file_level = false,

        -- Logging level for output to console. Set to false to disable console output.
        -- log_console_level = vim.log.levels.ERROR,
      })
    end,
  },

  "hashivim/vim-terraform",
  -- {
  -- 	"CopilotC-Nvim/CopilotChat.nvim",
  -- 	branch = "canary",
  -- 	dependencies = {
  -- 		{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
  -- 		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
  -- 	},
  -- 	opts = {
  -- 		debug = true, -- Enable debugging
  -- 		-- See Configuration section for rest
  -- 	},
  -- 	-- See Commands section for default commands if you want to lazy load on them
  -- },
  {
    "mawkler/modicator.nvim",
    event = "ColorScheme",
  },

  -- {
  -- 	"zbirenbaum/copilot-cmp",
  -- 	config = function()
  -- 		require("copilot_cmp").setup()
  -- 	end,
  -- },
  "HiPhish/nvim-ts-rainbow2",
  -- {
  --   dir = "/Users/chris/Repos/bookmark.nvim",
  -- },
  "andymass/vim-matchup",
  "lunarvim/synthwave84.nvim",
  {
    "kndndrj/nvim-dbee",
    build = function()
      require("dbee").install()
    end,
  },
  "kkharji/sqlite.lua",
  -- { "christianchiarulli/tabnine-nvim", build = "./dl_binaries.sh", branch = "suggestion_hl_group" },
  "stevearc/dressing.nvim",
  "AckslD/swenv.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  -- "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "mfussenegger/nvim-jdtls",
  "opalmay/vim-smoothie",
  {
    "j-hui/fidget.nvim",
    branch = "legacy",
  },
  "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  -- "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  {
    "lvimuser/lsp-inlayhints.nvim",
    branch = "anticonceal",
  },
  "lunarvim/darkplus.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  "nacro90/numb.nvim",
  "neogitorg/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  -- "renerocksai/calendar-vim",
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup({
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      })
    end,
  },
  "MunifTanjim/nui.nvim",
  "jackMort/ChatGPT.nvim",
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup({
        highlight_on_key = true,
      })
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  -- "github/copilot.vim",
  -- {
  -- 	"zbirenbaum/copilot.lua",
  -- 	cmd = "Copilot",
  -- 	event = "InsertEnter",
  -- },
  -- {
  --   "tzachar/cmp-tabnine",
  --   event = "BufRead",
  --   build = "./install.sh",
  -- },

  "MunifTanjim/nui.nvim",
  "Bryley/neoai.nvim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",
  {
    "hrsh7th/cmp-emoji",
    event = "BufRead",
  },
  "ThePrimeagen/vim-be-good",
  -- "folke/noice.nvim",
  -- "rcarriga/nvim-notify",

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
  -- "christianchiarulli/nvim-ts-rainbow",
  -- "karb94/neoscroll.nvim",
}
