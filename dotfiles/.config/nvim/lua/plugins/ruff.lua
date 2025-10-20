return {

  vim.lsp.config("pyright", {
    root_dir = vim.fn.getcwd(),
  }),
  vim.lsp.config("ruff", {
    init_options = {
      settings = {
        configuration = vim.fn.getcwd() .. "pyproject.toml",
      },
    },
    root_dir = vim.fn.getcwd(),
  }),

  vim.lsp.enable("ruff"),
  require("lspconfig").pyright.setup({
    settings = {
      pyright = {
        -- Using Ruff's import organizer
        disableOrganizeImports = true,
      },
      python = {
        analysis = {
          -- Ignore all files for analysis to exclusively use Ruff for linting
          ignore = { "*" },
          diagnosticMode = "off",
        },
      },
    },
  }),
}
