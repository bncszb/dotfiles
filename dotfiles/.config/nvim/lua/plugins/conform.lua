return {
  "stevearc/conform.nvim",
  --   opts = {
  --     formatters_by_ft = {
  --       python = function(bufnr)
  --         local conform = require("conform")
  --         if conform.get_formatter_info("ruff_format", bufnr).available then
  --           return { { "ruff_fix" }, { "ruff_format" } }
  --         else
  --           return { "black" }
  --         end
  --       end,
  --     },
  --   },
  -- }

  require("conform").setup({
    formatters_by_ft = {
      python = {
        -- To fix auto-fixable lint errors.
        "ruff_fix",
        -- To run the Ruff formatter.
        "ruff_format",
        -- To organize the imports.
        "ruff_organize_imports",
      },
    },
  }),
}
