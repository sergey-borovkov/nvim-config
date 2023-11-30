return {
    "alexghergh/nvim-tmux-navigation",
    keys = function()
        return {
            --
            { "<C-h>", "<cmd> nvim_tmux_nav.NvimTmuxNavigateLeft<cr>", desc = "Navigate left" },
            --vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)

            { "<C-k>", "<cmd> nvim_tmux_nav.NvimTmuxNavigateUp<cr>", desc = "Navigate right" },
            -- vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
            -- vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
            -- vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
        }
    end,
}
