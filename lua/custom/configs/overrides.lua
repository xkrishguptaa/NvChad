local M = {}

M.treesitter = {
  ensure_installed = {
    -- defaults
    "vim", "vimdoc",
    "lua", "luadoc", "luau",

    -- webdev
    "html",
    "css", "scss",
    "javascript", "jsdoc", "typescript",
    "tsx", "astro", "angular", "svelte", "vue",

    -- backend
    "python", "pymanifest",
    "go", "gomod", "gosum",
    "rust",
    "ruby",

    -- system
    "c", "c_sharp", "cpp",
    "zig",

    -- shell
    "bash", "fish",

    -- other
    "comment",
    "csv", "json", "json5", "toml", "yaml",
    "diff",
    "dockerfile",
    "terraform",
    "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
    "graphql",
    "ini",
    "jq",
    "markdown", "markdown_inline", "rst",
    "prisma",
    "regex",
    "ssh_config",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
