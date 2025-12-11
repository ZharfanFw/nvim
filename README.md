# Neovim Configuration

A modern, fast, and feature-rich Neovim configuration built with Lua and [lazy.nvim](https://github.com/folke/lazy.nvim).

## Features

- ⚡ **Fast Startup** - Lazy loading with lazy.nvim
- 🤖 **GitHub Copilot** - AI-powered code suggestions with Alt keybindings
- 🎨 **Modern UI** - Noice.nvim for better command line & messages
- 📝 **Smart Completion** - blink.cmp with LSP integration
- 🔍 **Fuzzy Finder** - Telescope for searching files and text
- 📂 **File Manager** - oil.nvim for file navigation
- 🧩 **Snippets** - Built-in snippet support
- 🎯 **Quick Navigation** - Harpoon for marking and jumping between files
- ✨ **Syntax Highlighting** - Treesitter with modern language support
- 🔧 **LSP Setup** - ts_ls, lua_ls, biome, tailwindcss, and more
- 📊 **Diagnostics** - Trouble.nvim for better error handling

## Prerequisites

- Neovim >= 0.9
- Node.js >= 22 (required for GitHub Copilot)
- Git (for plugin management)
- npm/yarn (for LSP servers)

## Installation

1. Clone this configuration:
```bash
git clone git@github.com:ZharfanFw/nvim.git ~/.config/nvim
```

2. Start Neovim:
```bash
nvim
```

Lazy.nvim will automatically install all plugins on first run.

3. **GitHub Copilot Setup**:
   - First use will prompt GitHub authentication
   - Follow the device code authentication flow
   - Copilot will then work automatically

## Project Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json          # Locked plugin versions
├── .luarc.json             # Lua LSP configuration
└── lua/
    ├── config/
    │   ├── keymaps.lua     # All keybindings
    │   ├── options.lua     # Neovim options
    │   └── lazy.lua        # Lazy.nvim setup
    └── plugins/
        ├── autopairs.lua       # Auto-closing brackets
        ├── colorscheme.lua     # Color scheme
        ├── comment.lua         # Code commenting
        ├── completions.lua     # blink.cmp setup
        ├── copilot.lua         # GitHub Copilot
        ├── diagnostics.lua     # Error handling
        ├── formatting.lua      # Code formatting
        ├── harpoon.lua         # File navigation
        ├── indent-blankline.lua # Indentation guides
        ├── lsp.lua             # LSP configuration
        ├── lualine.lua         # Status line
        ├── markdown.lua        # Markdown rendering
        ├── noice.lua           # Command line UI
        ├── notify.lua          # Notifications
        ├── oil.lua             # File manager
        ├── telescope.lua       # Fuzzy finder
        ├── testing.lua         # Test runner
        └── treesitter.lua      # Syntax highlighting
```

## Keymaps

### General

| Keymap | Action |
|--------|--------|
| `<Space>` | Leader key |
| `jj` | Escape (Insert mode) |
| `<leader>w` | Save file |
| `<leader>sn` | Save without formatting |
| `<leader>q` | Quit |
| `<leader>wq` | Save and quit |

### Navigation

| Keymap | Action |
|--------|--------|
| `<C-k>` | Move to split above |
| `<C-j>` | Move to split below |
| `<C-h>` | Move to split left |
| `<C-l>` | Move to split right |
| `<C-d>` | Scroll down (centered) |
| `<C-u>` | Scroll up (centered) |
| `n` | Next search result (centered) |
| `N` | Previous search result (centered) |

### Buffer & Window Management

| Keymap | Action |
|--------|--------|
| `<Tab>` | Next buffer |
| `<S-Tab>` | Previous buffer |
| `<leader>x` | Close buffer |
| `<leader>b` | New empty buffer |
| `<leader>v` | Split window vertically |
| `<leader>h` | Split window horizontally |
| `<leader>se` | Equalize split sizes |
| `<leader>xs` | Close split window |

### Tabs

| Keymap | Action |
|--------|--------|
| `<leader>to` | Open new tab |
| `<leader>tx` | Close tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |

### Editing

| Keymap | Action |
|--------|--------|
| `x` | Delete character (no copy to clipboard) |
| `<` (Visual) | Decrease indent (stay in visual mode) |
| `>` (Visual) | Increase indent (stay in visual mode) |
| `p` (Visual) | Paste without yanking selection |
| `<leader>lw` | Toggle line wrapping |
| `<Up>` | Increase window height |
| `<Down>` | Decrease window height |
| `<Left>` | Decrease window width |
| `<Right>` | Increase window width |

### LSP (When LSP is attached)

| Keymap | Action |
|--------|--------|
| `gd` | Go to definition |
| `gi` | Go to implementation |
| `gr` | Go to references |
| `<leader><space>` | Hover documentation |
| `<leader>D` | Go to type definition |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>f` | Format document |
| `<leader>d` | Open diagnostics (float) |

### File Navigation (Harpoon)

| Keymap | Action |
|--------|--------|
| `<leader>a` | Add file to harpoon |
| `<leader>hm` | Open harpoon menu |
| `<leader>h1` | Jump to harpoon file 1 |
| `<leader>h2` | Jump to harpoon file 2 |
| `<leader>h3` | Jump to harpoon file 3 |
| `<leader>h4` | Jump to harpoon file 4 |
| `<leader>hn` | Next harpoon file |
| `<leader>hp` | Previous harpoon file |

### File Manager (Oil)

| Keymap | Action |
|--------|--------|
| `<leader>e` | Open file manager |

### Telescope (Fuzzy Finder)

| Keymap | Action |
|--------|--------|
| `<leader>sf` | Search files |
| `<leader>sg` | Search text (live grep) |

### Testing (Neotest)

| Keymap | Action |
|--------|--------|
| `<leader>tr` | Run nearest test |
| `<leader>ti` | Show test output |
| `<leader>ts` | Show test summary |
| `<leader>ta` | Run all tests in suite |

### Diagnostics (Trouble)

| Keymap | Action |
|--------|--------|
| `<leader>xx` | Toggle Trouble |
| `<leader>xX` | Toggle Trouble (workspace) |
| `<leader>cs` | Show document diagnostics |
| `<leader>cl` | Show loclist |
| `<leader>xL` | Show quickfix list |
| `<leader>xQ` | Show all quickfix |

### GitHub Copilot

| Keymap | Action |
|--------|--------|
| `<M-l>` | Accept suggestion |
| `<M-j>` | Next suggestion |
| `<M-k>` | Previous suggestion |
| `<C-]>` | Dismiss suggestion |
| `<M-CR>` | Open suggestion panel |

### Code Comments

| Keymap | Action |
|--------|--------|
| `gcc` | Toggle line comment (Normal mode) |
| `gc` | Toggle comment (Visual mode) |
| `gbc` | Toggle block comment (Normal mode) |

## Configuration Files

### `lua/config/options.lua`
Core Neovim settings like line numbers, tab size, search behavior, etc.

### `lua/config/keymaps.lua`
All key bindings organized by category.

### `lua/config/lazy.lua`
Lazy.nvim bootstrap and plugin spec loading.

## Plugin Documentation

### Core Plugins

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Plugin manager
- **[blink.cmp](https://github.com/Saghen/blink.cmp)** - Modern autocompletion
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder

### UI/UX

- **[noice.nvim](https://github.com/folke/noice.nvim)** - Better command line UI
- **[nvim-notify](https://github.com/rcarriga/nvim-notify)** - Notification system
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Status line
- **[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)** - Indentation guides

### Navigation & Editing

- **[harpoon](https://github.com/ThePrimeagen/harpoon)** - Quick file jumping
- **[oil.nvim](https://github.com/stevearc/oil.nvim)** - File manager
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto-closing brackets
- **[comment.nvim](https://github.com/numToStr/comment.nvim)** - Code commenting

### Development

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** - Code formatting
- **[neotest](https://github.com/nvim-neotest/neotest)** - Test runner
- **[trouble.nvim](https://github.com/folke/trouble.nvim)** - Diagnostics UI
- **[copilot.lua](https://github.com/zbirenbaum/copilot.lua)** - GitHub Copilot

### Markdown

- **[render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)** - Markdown rendering

## Customization

### Change Leader Key
Edit `lua/config/keymaps.lua`:
```lua
vim.g.mapleader = " "  -- Change " " to your preferred leader
```

### Add a New Plugin
Create a new file in `lua/plugins/` (e.g., `my-plugin.lua`):
```lua
return {
  "github-username/plugin-name",
  event = "VeryLazy",
  opts = {
    -- Configuration
  },
}
```

### Disable a Plugin
Comment out the plugin file in the plugins directory or modify `lua/config/lazy.lua`.

### LSP Servers
Add new LSP servers in `lua/plugins/lsp.lua` using Mason.

## Troubleshooting

### Copilot not working
- Ensure Node.js >= 22: `node --version`
- Check authentication: `:Copilot status`
- Verify GitHub Student pack access

### LSP not attaching
- Check if language server is installed: `:Mason`
- Verify the filetype is supported in `lua/plugins/lsp.lua`
- Check error messages: `:LspInfo`

### Notifications showing repeatedly
- Already fixed in `lua/plugins/notify.lua` with `background_colour` config

### Slow startup
- Check lazy-lock.json is committed
- Use `:Lazy profile` to identify slow plugins

## Performance Tips

1. **Use lazy loading** - Plugins load on-demand
2. **Keep lazy-lock.json** - Ensures reproducible installs
3. **Profile startup** - `:Lazy profile` shows load times
4. **Disable unused plugins** - Comment out in plugins directory

## Updates

To update all plugins:
```bash
nvim +Lazy sync
```

To update a specific plugin:
```bash
nvim +Lazy update plugin-name
```

## Contributing

Feel free to customize this configuration to match your workflow!

## License

MIT - Feel free to use and modify as needed.

---

**Made with ❤️ by ZharfanFw**

For questions or issues, check your local Neovim configuration or visit the plugin repositories linked above.
