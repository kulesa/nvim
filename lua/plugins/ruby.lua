return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {
          enabled = true,
          cmd = {
            "docker",
            "exec",
            "-i",
            "erc_rails",
            "bundle",
            "exec",
            "solargraph",
            "stdio",
          },
          root_dir = function(fname)
            return require("lspconfig.util").find_git_ancestor(fname)
          end,
          init_options = {
            formatting = true,
          },
          settings = {
            solargraph = {
              diagnostics = true,
            },
          },
        },
        ruby_lsp = {
          enabled = false,
        },
        rubocop = {
          enabled = false,
        },
        standardrb = {
          enabled = false,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ruby = { "rubocop" },
      },
      formatters = {
        rubocop = {
          command = "docker",
          args = {
            "exec",
            "-i",
            "erc_rails",
            "bundle",
            "exec",
            "rubocop",
            "--auto-correct",
            "--stdin",
            "$FILENAME",
            "--format",
            "quiet",
            "--stderr",
          },
          stdin = true,
        },
      },
    },
  },
}
