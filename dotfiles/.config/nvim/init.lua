-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lint").linters_by_ft = {
  python = { "ruff" },
}
