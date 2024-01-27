local autocmd = vim.api.nvim_create_autocmd

local function open_nvim_terminal()
    require("nvterm.terminal").new "horizontal"
end

local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd({ "VimEnter"}, { callback = open_nvim_terminal })
autocmd({ "VimEnter" }, { callback = open_nvim_tree })

