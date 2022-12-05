# twilight.nvim
A port of [vim-twilight](https://github.com/scottymoon/vim-twilight) for Neovim, theme inspired from Textmate's Twilight theme.

![Twilight-preview](/screenshots/previewTwilight.png)

## ⚡️ Requeriments
* Neovim >= 0.5.0

## 📦 Installation
```lua
-- Packer
use 'barrientosvctor/twilight.nvim'
```

## 🔌 Plugins supported
* [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
* [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [LspSaga](https://github.com/glepnir/lspsaga.nvim)
* [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
* [Git Gutter](https://github.com/airblade/vim-gitgutter)
* [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
* [NERDTree](https://github.com/preservim/nerdtree)
* [Neotree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
* [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
* [nvim-notify](https://github.com/rcarriga/nvim-notify)
* [Dashboard](https://github.com/glepnir/dashboard-nvim)

## 🚀 Usage
```lua
local status, twilight = pcall(require, 'twilight')
if not status then return end

twilight.set()
```
