# Neovim Config

Personal Neovim configuration built around Lua and
[lazy.nvim](https://github.com/folke/lazy.nvim).

The config is organized as small plugin specs under `lua/core/plugins/`, with
editor defaults, keymaps, and macros kept in `lua/core/`.

## Requirements

- Neovim 0.10 or newer
- Git
- A Nerd Font-enabled terminal

Some language and workflow plugins expect external tools to be installed for the
languages you use, such as language servers, formatters, linters, test runners,
or debug adapters.

## Install

Clone this repository as your Neovim config:

```sh
git clone https://github.com/beardwin/nvim-config.git ~/.config/nvim
```

Start Neovim:

```sh
nvim
```

`lazy.nvim` bootstraps itself on first launch and installs plugins from the specs
in `lua/core/plugins/`.

## Structure

```text
.
|-- init.lua
|-- lazy-lock.json
|-- lua/
|   |-- core/
|   |   |-- options.lua
|   |   |-- mappings.lua
|   |   |-- macros.lua
|   |   |-- treesitter.lua
|   |   `-- plugins/
|   `-- custom/
|       `-- snippets/
|-- tests/
`-- .snippets/
```

Key files:

- `init.lua`: entry point, lazy.nvim bootstrap, plugin setup
- `lua/core/options.lua`: editor defaults and autocommands
- `lua/core/mappings.lua`: global keymaps
- `lua/core/plugins/`: lazy.nvim plugin specs
- `lua/custom/snippets/`: LuaSnip snippets
- `tests/`: lightweight configuration tests
- `lazy-lock.json`: pinned plugin revisions

## Plugin Management

Common lazy.nvim commands:

```vim
:Lazy
:Lazy sync
:Lazy update
:Lazy clean
```

After changing plugin specs, run `:Lazy sync` and commit the updated
`lazy-lock.json` when the new plugin versions should be pinned.

## Testing

The `tests/` directory contains Lua tests for selected plugin configuration.
Run the relevant test command for your local setup before committing config
changes.

## Notes

- `<Space>` is the leader key.
- `nvim.log` is local runtime output and is intentionally ignored.
- `.snippets/` contains editor snippet source files separate from LuaSnip
  snippets in `lua/custom/snippets/`.
