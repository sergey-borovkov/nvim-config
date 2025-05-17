return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  ft = { "rust" },
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "rust",
      callback = function()
        vim.keymap.set("n", "<leader>cg", function()
          vim.cmd.RustLsp({ "hover", "actions" })
          vim.cmd.RustLsp({ "hover", "actions" })
        end, { buffer = true, desc = "Rust hover actions" })
      end,
    })
  end,
}
