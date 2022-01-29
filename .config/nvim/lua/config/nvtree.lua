vim.g.nvim_tree_quit_on_open = 1
require'nvim-tree'.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  auto_close = true,
  update_cwd = false,
}
