local cmd = vim.cmd

cmd [[colorscheme nord]]
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = true
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false
require('nord').set()
--
--require("tokyonight").setup({
--    transparent = true,
--})
--
---- cmd [[ colorscheme nightfox ]]
--cmd [[ colorscheme tokyonight ]]
--
cmd [[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
cmd [[hi NvimTreeNormalNC guibg=NONE]]
