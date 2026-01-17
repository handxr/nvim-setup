# Neovim Configuration

A minimal, fast Neovim configuration focused on web development (JavaScript, TypeScript, React) and Python.

## Requirements

- **Neovim** >= 0.11 (uses new `vim.lsp.config` API)
- **Git** (for plugin management)
- **Node.js** (for LSP servers and formatters)
- **ripgrep** (for Telescope live grep)
- **A Nerd Font** (for icons in UI)

## Installation

1. Backup your existing Neovim configuration:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. Clone this repository:
   ```bash
   git clone <repo-url> ~/.config/nvim
   ```

3. Open Neovim and let lazy.nvim install plugins:
   ```bash
   nvim
   ```

4. Run `:Lazy sync` to ensure all plugins are installed.

## Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json           # Plugin version lockfile
└── lua/
    ├── config/
    │   ├── lazy.lua         # Plugin manager setup
    │   ├── keymaps.lua      # Global keybindings
    │   └── options.lua      # Editor options
    └── plugins/             # Plugin configurations
        ├── lsp.lua          # LSP & completion
        ├── treesitter.lua   # Syntax highlighting
        ├── telescope.lua    # Fuzzy finder
        ├── harpoon.lua      # File navigation
        ├── oil.lua          # File explorer
        ├── formatting.lua   # Code formatting
        ├── gitsigns.lua     # Git integration
        ├── lualine.lua      # Status line
        ├── which-key.lua    # Keybinding help
        ├── autopairs.lua    # Auto close brackets
        ├── comment.lua      # Code commenting
        ├── undotree.lua     # Undo history
        ├── todo-comments.lua# Highlight TODOs
        ├── markdown-preview.lua # Markdown preview
        └── zenbones.lua     # Colorscheme
```

## Plugins

### Plugin Manager

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Modern plugin manager with lazy loading

### LSP & Completion

- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP server installer
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** - Bridge between Mason and lspconfig
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Autocompletion engine
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine

### Syntax & Treesitter

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Advanced syntax highlighting and code understanding

### Navigation

- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder for files, grep, and more
- **[harpoon](https://github.com/ThePrimeagen/harpoon)** - Quick file navigation (mark and jump to files)
- **[oil.nvim](https://github.com/stevearc/oil.nvim)** - File explorer that edits your filesystem like a buffer

### UI

- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Fast and customizable status line
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** - Displays available keybindings in a popup

### Editing

- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto close brackets and quotes
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)** - Smart code commenting
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** - Code formatting (Biome, Prettier, ESLint)

### Git

- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git signs in the gutter and git blame

### Utilities

- **[undotree](https://github.com/mbbill/undotree)** - Visualize and navigate undo history
- **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** - Highlight and search TODO comments
- **[markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)** - Live markdown preview in browser

### Colorscheme

- **[zenbones.nvim](https://github.com/zenbones-theme/zenbones.nvim)** - Using `zenwritten` variant

## Keybindings

Leader key: `<Space>`

### General

| Key | Description |
|-----|-------------|
| `<Esc>` | Clear search highlight |
| `<C-h/j/k/l>` | Navigate between windows |
| `J` / `K` (visual) | Move selected lines down/up |

### File Navigation

| Key | Description |
|-----|-------------|
| `-` | Open file explorer (Oil) |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search text) |
| `<leader>fb` | List open buffers |
| `<leader>fh` | Search help tags |
| `<leader>fr` | Recent files |

### Harpoon (Quick File Access)

| Key | Description |
|-----|-------------|
| `<leader>a` | Add file to Harpoon |
| `<leader>h` | Open Harpoon menu |
| `<leader>1-4` | Jump to Harpoon file 1-4 |

### LSP

| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Hover documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |
| `[d` / `]d` | Previous/next diagnostic |

### Completion (in insert mode)

| Key | Description |
|-----|-------------|
| `<C-k>` / `<C-j>` | Navigate completion menu |
| `<C-Space>` | Trigger completion |
| `<C-e>` | Close completion menu |
| `<CR>` | Confirm selection |
| `<Tab>` | Next item or expand snippet |

### Utilities

| Key | Description |
|-----|-------------|
| `<leader>cf` | Format current file |
| `<leader>u` | Toggle Undotree |
| `gc` (visual/normal) | Comment toggle |

## LSP Servers

Automatically installed via Mason:

| Server | Language |
|--------|----------|
| `ts_ls` | TypeScript/JavaScript |
| `tailwindcss` | Tailwind CSS |
| `eslint` | ESLint |
| `jsonls` | JSON |
| `pyright` | Python |

## Formatters

Configured via conform.nvim (format on save enabled):

- **JavaScript/TypeScript/React**: Biome > Prettier > ESLint (first available)
- **JSON**: Biome > Prettier
- **HTML/CSS/Markdown**: Prettier

## Customization

### Adding a new plugin

Create a new file in `lua/plugins/` returning a lazy.nvim plugin spec:

```lua
-- lua/plugins/example.lua
return {
  "author/plugin-name",
  config = function()
    require("plugin-name").setup({})
  end,
}
```

### Changing the colorscheme

Edit `lua/plugins/zenbones.lua` or add a new colorscheme plugin.

### Adding LSP servers

1. Add the server name to the `ensure_installed` list in `lua/plugins/lsp.lua`
2. Add the server configuration with `vim.lsp.config()`
3. Add to `vim.lsp.enable()` call

## Vim Basics

### Navigation

| Key | Action |
|-----|--------|
| `h j k l` | Left, down, up, right |
| `w` / `b` | Next/previous word |
| `0` / `$` | Start/end of line |
| `gg` / `G` | Start/end of file |
| `f{char}` | Jump to character |
| `%` | Matching bracket |
| `{` / `}` | Previous/next paragraph |
| `zz` | Center screen |

### Editing

| Key | Action |
|-----|--------|
| `i` / `a` | Insert before/after cursor |
| `o` / `O` | New line below/above |
| `x` | Delete character |
| `dd` | Delete line |
| `yy` | Yank (copy) line |
| `p` | Paste |
| `u` / `<C-r>` | Undo/redo |

### Text Objects

Combination: `verb + object`

**Verbs:** `d` (delete), `c` (change), `y` (yank)

**Objects:** `w` (word), `iw` (inner word), `i"` (inside quotes), `i(` (inside parens), `it` (inside tag)

**Examples:**
```
diw  -> delete word
ci"  -> change inside quotes
yi(  -> yank inside parentheses
dit  -> delete inside tag
```

## Troubleshooting

- Run `:checkhealth` to diagnose issues
- Run `:Lazy` to check plugin status
- Run `:LspInfo` to check LSP status
- Run `:Mason` to manage LSP servers
- Run `:ConformInfo` to see active formatters
