local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- recommand settings from nvim-tree documentation
vim.g.load = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#FF0000 ]])

-- configure nvim-tree
nvimtree.setup({
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  -- 	git = {
  -- 		ignore = false,
  -- 	},
})
