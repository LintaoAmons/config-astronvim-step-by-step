return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>cj"] = { "<cmd>bd<cr>", desc = "close current buffer" },
    ["<M-w>"] = { "<cmd>bd<cr>", desc = "close current buffer" },
    ["<leader>ck"] = { "<cmd>tabclose<cr>", desc = "close current tab" },
    ["<leader>cl"] = { "<c-w>c", desc = "Close current window/split" },
    ["<leader>ci"] = { "<cmd>qa!<CR>", desc = "quit nvim" },

    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    ["<leader>df"] = { "<cmd> DiffviewOpen <cr>", desc = "Open diffview" },
    ["<leader>dd"] = { "<cmd> DiffviewFileHistory %<cr>", desc = "diff current file" },
    ["<leader>dv"] = { ":call v:lua.compare_to_clipboard()<CR>", desc = "Diff selected with clipboard" },

    ["<leader>wl"] = { "<cmd>vsplit<cr>", desc = "Split window vertically" },
    ["<leader>wo"] = { "<c-w>o", desc = "Maximize window" },
    ["<leader>wc"] = { "<c-w>c", desc = "Close window" },

    ["<leader>fm"] = { "<cmd>lua vim.lsp.buf.format { async = true } <cr>", desc = "Format" },

    -- hop
    ["f"] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
      desc = "jump in current line",
    },
    ["F"] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
      desc = "jump in current line, before cursor",
    },
    ["t"] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
    },
    ["T"] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
    },
    ["<C-f>"] = {
      "<cmd>lua require'hop'.hint_char2()<cr>",
      desc = "Jump everywhere",
    },
    ["<M-F>"] = { "<cmd>lua require'tsht'.nodes()<cr>", desc = "select range by treehopper" },

    -- find
    ["<leader>fe"] = { "<cmd>Neotree buffers <cr>", desc = "Find Recent files" },
    ["<leader>fl"] = { "<cmd>Neotree reveal<cr>", desc = "Reveal current file in file tree" },
    ["<leader>fE"] = { "<cmd>Telescope oldfiles<cr>", desc = "Find Recent files" },
    ["<M-e>"] = { "<cmd>Telescope oldfiles<cr>", desc = "Find Recent files" },
    ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", desc = "Find commands/keymaps" }, -- keymap is more like commands for me

    ["ge"] = { "<CMD>Lspsaga diagnostic_jump_next<CR>", desc = "Go to next diagnostic/error" },
    ["gr"] = { "<CMD>lua require'telescope.builtin'.lsp_references{}<CR>", desc = "Go to references" },
    ["gd"] = { "<CMD>Telescope lsp_definitions<CR>", desc = "Go to definitions" },
    ["gt"] = { "<CMD>GoAlt<CR>", desc = "Go to tests" },
    ["K"] = { "<CMD>Lspsaga hover_doc<CR>", desc = "Hover_Doc" },
    ["<M-k>"] = { "<CMD>Lspsaga code_action<CR>", desc = "Code Action" },
    ["<leader>lf"] = { "<CMD>Lspsaga lsp_finder<CR>", desc = "Lsp finder" }, -- remap to control-enter by hammerspoon
    ["<leader>rn"] = { "<CMD>Lspsaga rename<CR>", desc = "Rename" },

    ["<leader>gr"] = { function() require("gitsigns").reset_hunk() end, desc = "Reset git hunk" },

    -- Run
    ["<leader>rr"] = { "<cmd>GoTestFile<cr>", desc = "GoTestFile" },
    ["<leader>rt"] = { "<cmd>GoTest<cr>", desc = "RunAllGoTest: GoTestFile" },

    ["<leader>zo"] = { "zR", desc = "Unfold all" },
    ["<leader>zc"] = { "zM", desc = "Fold all" },

    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", desc = "Find files" },

    -- tree
    ["<C-n>"] = { "<cmd> Neotree toggle <CR>", desc = "toggle nvimtree" },
    ["<leader>e"] = { "<cmd> Neotree focus <CR>", desc = "focus nvimtree" },

    -- Tab
    ["tl"] = { "<cmd> tabnext <CR>", desc = "Tab Next" },
    ["th"] = { "<cmd> tabprevious <CR>", desc = "Tab Previous" },

    -- No
    ["<leader>nl"] = { "<cmd> nohl <CR>", desc = "nohl" },

    -- Show
    ["<leader>ss"] = { "<cmd>AerialToggle<CR>", desc = "Show outline" },
    ["<leader>sg"] = { "<cmd>Neotree git_status<cr>", desc = "Show git status" },

    ["<C-q>"] = { "<cmd>SessionManager load_session<CR>", desc = "Load session" }, -- <!>load_session
    ["<M-m>"] = { '<cmd>lua vim.notify("haha")<CR>' }, -- command+m
    ["<M-M>"] = { '<cmd>lua vim.notify("heihei")<CR>' }, -- command+control+m
    ["<M-P>"] = { "<cmd>Telescope commands<CR>", desc = "Find commands" },

    -- ["<leader>db"] = {
    --   "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>",
    -- },
    -- ["<leader>dt"] = {"<CMD>GoDebug -t<CR>"},
    -- ["<M-F8>"] = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>" }, -- command+f8
    -- ["<F4>"] = { "<cmd>lua require'dap'.terminate()<CR>" },
    -- ["<F9>"] = { "<cmd>lua require'dap'.continue()<CR>" },
    -- ["<F7>"] = { "<cmd>lua require'dap'.step_into()<CR>" },
    -- ["<F8>"] = { "<cmd>lua require'dap'.step_over()<CR>" },
  },
  i = {
    ["<C-q>"] = { "<cmd>SessionManager load_session<CR>", desc = "Load session" }, -- <!>load_session
    ["<M-P>"] = { "<cmd>Telescope commands<CR>", desc = "Find commands" },

    [";;"] = { " := ", desc = "golang: assign value" },
    [";a"] = { " != ", desc = "!=" },
    [";s"] = { " += ", desc = "+=" },
    [";d"] = { " == ", desc = "==" },
  },
  v = {
    ["<leader>dd"] = { "<cmd> DiffviewFileHistory<cr>", desc = "Diff file history" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
