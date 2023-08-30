local cmd = vim.cmd

require("tokyonight").setup({
    transparent = true,
})

-- cmd [[ colorscheme nightfox ]]
cmd [[ colorscheme tokyonight ]]

cmd [[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
