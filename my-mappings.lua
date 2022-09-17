return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>wl"] = { "<cmd>vsplit<cr>", desc = "Split window vertically" },
    ["<leader>wo"] = { "<c-w>o", desc = "Maximize window" },

    ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", desc = "Find keymapgs" },
    ["<C-e>"] = { "<cmd>Telescope oldfiles<cr>", desc = "Find recent files" },
    ["<leader>xx"] = { '<cmd>lua vim.notify("haha")<cr>', desc = "Test lua mapping" },
    ["<M-n>"] = { '<cmd>lua vim.notify("heihei")<cr>', desc = "Test lua mapping" },
  },
  i = {
    [";;"] = { ":=" },
    [";a"] = { "!=" },
  },
  v = {},
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
