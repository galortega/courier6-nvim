# Neovim Lua Config

A simple Neovim setup in Lua using lazy.nvim to manage plugins and settings.

## Features

- Fast plugin loading with lazy.nvim

- LSP, Treesitter, Telescope, completion

- Keybindings and settings in Lua


## Requirements

- Neovim ≥ 0.8

- Git


## Installation

1. Clone repo
`git clone https://github.com/your-user/your-nvim-config ~/.config/nvim`

2. Open Neovim to install plugins
    `nvim`

## Structure
    ```
    ~/.config/nvim
    ├── init.lua       # Load lazy and main setup
    └── lua
        ├── core      # options, keymaps, autocmds
        └── plugins   # plugin list and configs
    ```
## Usage

1. Add plugins in lua/plugins.lua

2. Update plugins inside Neovim:

    `:Lazy update`


