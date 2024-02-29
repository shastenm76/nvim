return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.curlylint,
        null_ls.builtins.diagnostics.checkmake,
        null_ls.builtins.diagnostics.djlint,
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.php,
        null_ls.builtins.diagnostics.hadolint,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.tidy,
        null_ls.builtins.formatting.nginx_beautifier,
        null_ls.builtins.formatting.ocamlformat,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.rustywind,
        null_ls.builtins.formatting.stylish_haskell,
        null_ls.builtins.formatting.terraform_fmt,
        null_ls.builtins.formatting.xmllint,
      },
    })
    local key = vim.keymap.set
    local buf = vim.lsp.buf.format
    key("n", "<leader>gf", buf, {})
  end,
}
