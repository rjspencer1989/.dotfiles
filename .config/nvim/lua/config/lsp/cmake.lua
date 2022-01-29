local nvim_lsp = require('lspconfig')
local lspcommon = require('config.lsp.common')
nvim_lsp.cmake.setup {
  root_dir = nvim_lsp.util.root_pattern('compile_commands.json', '.git', 'build') or dirname,
  capabilities = lspcommon['capabilities'],
  on_attach = lspcommon.on_attach
}
