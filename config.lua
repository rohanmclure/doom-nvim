doom.core.treesitter.settings.show_compiler_warning_message = false

doom.leader_key = ";"

-- doom_config - Doom Nvim user configurations file
--
-- This file contains the user-defined configurations for Doom nvim.
-- Just override stuff in the `doom` global table (it's injected into scope
-- automatically).

-- ADDING A PACKAGE

doom.use_package({
  "xiyaowong/nvim-transparent",
  config = function()
    require("transparent").setup({
      enable = true,
      extra_groups = {
      },
      exclude = {
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
        "NvimTreeToggle",
      },
      ignore_linked_group = true,
    })
  end
})

doom.use_package({
  "tpope/vim-fugitive"
})

-- ADDING A KEYBIND

doom.colorscheme = "doom-gruvbox"
doom.modules.features.tabline.settings.options.separator_style = "|"
doom.modules.features.tabline.settings.options.enforce_regular_tabs = false
doom.modules.features.tabline.settings.options.always_show_bufferline = true

doom.binds = {}

doom.use_keybind({
  -- The `name` field will add the keybind to whichkey
  {"<leader>", name='+most cmds', {
    {
      { "F", '<cmd>Telescope<CR>', name = '+telescope' },
      { "f", '<cmd>Telescope find_files<CR>', name = '+files' },
      { "S", '<cmd>Telescope symbols<CR>', name = '+symbols' },
      { "b", '<cmd>Telescope buffers<CR>', name = '+buffers' },
      { "/", '<cmd>Telescope live_grep<CR>', name = '+global-search'},
      { "$", function() require("persistence").load({ last = true }) end, name = '+restore-session' },
      { "d", '<cmd>NvimTreeToggle<CR>', name = '+directory' },
      { "m", '<cmd>MinimapToggle<CR>', name = '+minimap' },
      { "c", '<cmd>Telescope commands<CR>', name = '+commands' },
      { "n", '<cmd>BufferLineCycleNext<CR>', name = '+bn' },
      { "p", '<cmd>BufferLineCyclePrev<CR>', name = '+bp' },
      { "g",
        {
          { "b", '<cmd>Git blame<CR>', name = '+blame' },
          { "s", '<cmd>Git status<CR>', name = '+status' },
          { "S", '<cmd>vertical Git show --patch<CR>', name = '+status' },
          { "a", '<cmd>vertical Git add %<CR>', name = '+add-current-file' },
          { "c", '<cmd>vertical Git commit<CR>', name = '+commit' },
          { "cc", '<cmd>vertical Git commit -a<CR>', name = '+commit-add-all' },
          { "C", '<cmd>vertical Git commit --amend --no-edit<CR>', name = '+commit-amend' },
          { "CC", '<cmd>vertical Git commit --amend --no-edit -a<CR>', name = '+commit-amend-all' },
          { "f", '<cmd>vertical Git fetch<CR>', name = '+fetch' },
          { "F", '<cmd>vertical Git fetch --all<CR>', name = '+fetch-all' },
          { "p", '<cmd>vertical Git push<CR>', name = '+push' },
          { "P", '<cmd>vertical Git push -f<CR>', name = '+push-force' },
        }, name = '+git'
      },
      { "s", function() vim.cmd(":Gitsigns toggle_signs") end, name = '+toggle-git-signs' },
      { "q", function() vim.cmd("bp | bd # | bn") end, name = '+bd' },
      { "Q", function() vim.cmd(":wincmd q") end, name = '+split-quit' },
      { "h", function() vim.cmd(":wincmd h") end, name = '+split-left' },
      { "j", function() vim.cmd(":wincmd j") end, name = '+split-down' },
      { "k", function() vim.cmd(":wincmd k") end, name = '+split-up' },
      { "l", function() vim.cmd(":wincmd l") end, name = '+split-right' },
      { "=", function() vim.cmd("") end, name = '+split-balance' },
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

doom.use_autocmd({
  { "VimEnter", "*", function() vim.cmd("set norelativenumber") end }
})

-- vim: sw=2 sts=2 ts=2 expandtab
