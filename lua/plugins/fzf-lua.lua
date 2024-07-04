return {
  -- change trouble config
  {
    "ibhagwan/fzf-lua",
    -- opts will be merged with the parent spec
    opts = {
      winopts = {
        preview = {
          height = 0.85, -- window height
          width = 0.40, -- window width
          vertical = "down:25%", -- up|down:size
          horizontal = "right:40%",
        },
      },
    },
  },
}
