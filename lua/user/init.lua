local config = {
  -- Configure plugins
  plugins = {
    -- Add plugins, the packer syntax without the "use"
    init = {
      { "preservim/nerdtree" },
      { "ryanoasis/vim-devicons" },
    },
    -- All other entries override the setup() call for default plugins
    treesitter = {
      ensure_installed = { "lua" },
    },
    packer = {
      compile_path = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",
    },
  },

  polish = function()
    local opts = { noremap = true, silent = true }
    local map = vim.api.nvim_set_keymap
    local set = vim.opt
    -- Set key bindings
    map("n", "<leader>fs", "<cmd>Telescope string_greps<CR>", opts)
    map("n", "<leader>ne", "<cmd>NERDTree <CR>", opts)
    map("n", "<C-l>", "$", opts) 
    map("n", "<C-a>", "0", opts)
    map("v", "<leader>k", "$", opts)
    map("v", "<leader>a", "0", opts)
    map("i", "<C-a>", "<Esc>I", opts)
    map("i", "<C-l>", "<Esc>A", opts)
    map("i", "<C-q>", "<Esc>", opts)
  end,
}

return config
