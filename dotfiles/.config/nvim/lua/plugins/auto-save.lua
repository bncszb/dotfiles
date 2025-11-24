return {
  "Pocco81/auto-save.nvim",
  lazy = false,
  opts = {
    -- Disable the execution message on save
    execution_message = {
      message = function()
        return ""
      end,
    },
  },
  keys = {
    -- Add a keymap to toggle autosave
    { "<leader>uv", "<cmd>ASToggle<CR>", desc = "Toggle autosave" },
  },
}
