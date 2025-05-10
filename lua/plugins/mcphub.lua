return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
  },
  opts = {
    use_bundled_binary = true, -- Use bundled mcp-hub binary
  },
  -- uncomment the following line to load hub lazily
  cmd = "MCPHub", -- lazy load
  build = "npm install mcp-hub@latest", -- Installs required mcp-hub npm module
  config = function()
    require("mcphub").setup()
  end,
}
