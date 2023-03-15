doom.core.treesitter.settings.show_compiler_warning_message = false

doom.leader_key = ";"

-- doom_config - Doom Nvim user configurations file
--
-- This file contains the user-defined configurations for Doom nvim.
-- Just override stuff in the `doom` global table (it's injected into scope
-- automatically).

-- ADDING A PACKAGE
--
-- doom.use_package("EdenEast/nightfox.nvim", "sainnhe/sonokai")
-- doom.use_package({
--   "ur4ltz/surround.nvim",
--   config = function()
--     require("surround").setup({mappings_style = "sandwich"})
--   end
-- })

-- ADDING A KEYBIND

doom.colorscheme = "doom-gruvbox"

doom.use_keybind({
  -- The `name` field will add the keybind to whichkey
  {"<leader>", name='+most cmds', {
    {
      { "f", '<cmd>Telescope find_files<CR>', name = '+files' },
      { "b", '<cmd>Telescope buffers<CR>', name = '+buffers' },
      { "/", '<cmd>Telescope live_grep<CR>', name = '+global-search'},
      { "d", '<cmd>NvimTreeToggle<CR>', name = '+directory' },
      { "c", '<cmd>Telescope commands<CR>', name = '+commands' },
      { "n", '<cmd>BufferLineCycleNext<CR>', name = '+bn' },
      { "p", '<cmd>BufferLineCyclePrev<CR>', name = '+bp' },
      { "q", function() vim.cmd("bp | bd # | bn") end, name = '+bd' },
      { "Q", function() vim.cmd(":wincmd q") end, name = '+split-quit' },
      { "h", function() vim.cmd(":wincmd h") end, name = '+split-left' },
      { "j", function() vim.cmd(":wincmd j") end, name = '+split-down' },
      { "k", function() vim.cmd(":wincmd k") end, name = '+split-up' },
      { "l", function() vim.cmd(":wincmd l") end, name = '+split-right' },
      { "v", function() vim.cmd(":vsp") end, name = '+vsplit' },
      { "V", function() vim.cmd(":split") end, name = '+hsplit' },
      { "r", function() vim.cmd(":set number relativenumber!") end, name = '' },
    }
  }}
})

-- ADDING A COMMAND

doom.use_cmd({
  {"HybridAbsoluteNumberToggle",
    function()

    end
  }
})

-- ADDING AN AUTOCOMMAND
--
-- doom.use_autocmd({
--   { "FileType", "javascript", function() print('This is a javascript file') end }
-- })

-- vim: sw=2 sts=2 ts=2 expandtab
