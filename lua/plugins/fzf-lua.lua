return {
  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      ------------------------------------------------------------------
      -- 1. put the prompt/search line under everything (all pickers)
      ------------------------------------------------------------------
      opts.fzf_opts = vim.tbl_extend("force", opts.fzf_opts or {}, {
        ["--layout"] = "reverse-list",   -- prompt last, list above it
      })

      ------------------------------------------------------------------
      -- 2. keep the preview where it already is (default = right:50%).
      --    ->  no   winopts.preview tweaks this time
      ------------------------------------------------------------------

      ------------------------------------------------------------------
      -- 3. make *grep* results easier to read when the path is deep.
      --    The plain Files❯ picker stays exactly as before.
      ------------------------------------------------------------------
      opts.grep = vim.tbl_extend("force", opts.grep or {}, {
        formatter    = "path.filename_first",  -- “main.c …/long/path”
        path_shorten = 1,                      -- ~/p/r/j/src/
      })
    end,
  },
}
