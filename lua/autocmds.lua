require "nvchad.autocmds"

-- open file explorer by default (only when no file was passed as argument)
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      -- NvimTreeToggle is the lazy-load command registered by NvChad;
      -- the tree starts closed on startup, so toggling opens it.
      vim.cmd "NvimTreeToggle"
    end
  end,
})
