return {

  vim.lsp.config("ruff", {
    init_options = {
      settings = {
        configuration = vim.fn.getcwd() .. "/pyproject.toml",
      },
    },
    root_dir = vim.fn.getcwd(),
  }),

  vim.lsp.enable("ruff"),
}
