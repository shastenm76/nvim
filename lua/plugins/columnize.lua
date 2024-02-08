return {
  "jakeru/columnize.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    vim.keymap.set("v", "<Leader>c", require("columnize").columnize, { desc = "Columnize selected lines" })
  end,
}


