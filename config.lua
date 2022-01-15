-- doom_config - Doom Nvim user configurations file
--
-- This file contains the user-defined configurations for Doom nvim.
-- Just override stuff in the `doom` global table (it's injected into scope
-- automatically).
--
doom.indent = 2

table.insert(doom.packages, {
  'rafcamlet/nvim-luapad'
})

-- vim: sw=2 sts=2 ts=2 expandtab
