local plugins = {

  {
    "github/copilot.vim",
    run = "make",
    lazy = false,
    config = function()
      vim.cmd("autocmd BufEnter github.com_github_copilot.vim call copilot#init()")
    end
  },

  {
    "leafOfTree/vim-svelte-plugin",
    lazy = false
  },

}

return plugins
