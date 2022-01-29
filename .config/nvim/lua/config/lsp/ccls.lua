local nvim_lsp = require('lspconfig')
local lspcommon = require('config.lsp.common')
nvim_lsp.ccls.setup {
  root_dir = nvim_lsp.util.root_pattern('compile_commands.json'),
  capabilities = lspcommon.capabilities,
  on_attach = lspcommon.on_attach
}
