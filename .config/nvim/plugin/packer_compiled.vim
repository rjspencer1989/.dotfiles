" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rob/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rob/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rob/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rob/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rob/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim"
  },
  NrrwRgn = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/NrrwRgn"
  },
  ["any-jump.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/any-jump.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["cheat.sh-vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/cheat.sh-vim"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/ctrlsf.vim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/lua-dev.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  neogit = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-luapad"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-luapad"
  },
  ["nvim-luaref"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-luaref"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/one-small-step-for-vimkind"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/rob/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["python-snippets"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/python-snippets"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope-github.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim"
  },
  ["telescope-vimspector.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope-vimspector.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["unicode.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/unicode.vim"
  },
  ["vader.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vader.vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-autoclose"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-autoclose"
  },
  ["vim-boxdraw"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-boxdraw"
  },
  ["vim-browser-search"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-browser-search"
  },
  ["vim-colors-pencil"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-colors-pencil"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-doge"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-doge"
  },
  ["vim-dotenv"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-dotenv"
  },
  ["vim-dotoo"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-dotoo"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-markdown-toc"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-package-info"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-package-info"
  },
  ["vim-pad"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-pad"
  },
  ["vim-pencil"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-pencil"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-scriptease"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-scriptease"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-signature"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-table-mode"
  },
  ["vim-themis"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-themis"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  vimspector = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vimspector"
  },
  ["vscode-go"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vscode-go"
  },
  ["vscode-javascript"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vscode-javascript"
  },
  ["vscode-python-snippet-pack"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vscode-python-snippet-pack"
  },
  ["vscode-rust"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/vscode-rust"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["yarn.vim"] = {
    loaded = true,
    path = "/home/rob/.local/share/nvim/site/pack/packer/start/yarn.vim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
