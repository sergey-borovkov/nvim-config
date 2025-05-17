return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
  },
  opts = {
    use_bundled_binary = true, -- Use bundled mcp-hub binary
    extensions = {
      avante = {
        make_slash_commands = true, -- make /slash commands from MCP server prompts
      },
    },
    auto_approve = true, -- auto approve all prompts
  },
  -- uncomment the following line to load hub lazily
  cmd = "MCPHub", -- lazy load
  build = "npm install mcp-hub@latest", -- Installs required mcp-hub npm module
  config = function()
    require("mcphub").setup()
  end,
}
