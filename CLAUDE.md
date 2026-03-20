# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This is Marcus's home directory. Claude Code is used here to help manage dotfiles and system configuration.

## Key Config Files

| File/Dir | Purpose |
|---|---|
| `~/.bashrc` | Shell config — aliases, PATH, nvm/cargo/deno sourcing |
| `~/.profile` | Login shell setup |
| `~/.tmux.conf` | Tmux config (prefix: `C-Space`, vim-style nav) |
| `~/.gitconfig` | Git identity (marcus@rognes.guru) |
| `~/.config/nvim/` | AstroNvim v5 config |
| `~/.config/lazygit/` | Lazygit config |
| `~/.config/ranger/` | Ranger file manager config |
| `~/.config/btop/` | Btop system monitor config |

## Neovim (AstroNvim v5)

Entry point: `~/.config/nvim/init.lua` — bootstraps lazy.nvim, then calls `lazy_setup` and `polish`.

Plugin configs live in `~/.config/nvim/lua/plugins/`:
- `astrocore.lua` — core mappings and options
- `astrolsp.lua` — LSP configuration
- `mason.lua` — LSP/tool installer
- `none-ls.lua` — formatters/linters via none-ls
- `telescope.lua` — fuzzy finder
- `tmux.lua` — vim-tmux-navigator integration
- `toggleterm.lua` — terminal management
- `treesitter.lua` — syntax/parsing
- `colorscheme.lua`, `astroui.lua` — appearance
- `user.lua` — personal overrides

Claude integration in nvim (defined in `init.lua`):
- `<leader>tc` — toggle Claude floating terminal
- `<leader>fc` — Claude semantic search (`lua/claude_search.lua`)

## Tmux Key Bindings

- Prefix: `C-Space`
- Pane nav: `C-h/j/k/l` (shared with nvim via vim-tmux-navigator)
- Split horizontal: `prefix + |`, vertical: `prefix + \`
- Kill pane: `prefix + q`
- Copy mode: `prefix + Enter`, vi-style (`v`, `y`)

## Installed Runtimes / Toolchains

- **Node.js**: managed via nvm (`~/.nvm`), current: v24.14.0
- **Rust**: via rustup (`~/.cargo`)
- **Deno**: at `~/.deno`
- **Editor**: `$EDITOR` and `$VISUAL` set to `nvim`

## Dotfile Management

Chezmoi state is at `~/.config/chezmoi/` but no source directory is configured here — chezmoi is used for state tracking only in this install.
