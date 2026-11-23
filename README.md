# raycast.nvim

Neovim colorschemes based on the Raycast Light and Raycast Dark terminal palettes created by Thomas Paul Mann and Nichlas Wærnes Andersen. [View the palettes](https://github.com/mbadolato/iTerm2-Color-Schemes#raycast-dark)

## Install with vim.pack

In your `init.lua` (Neovim 0.12 or later):

```lua
vim.pack.add({ 'https://github.com/hansbala/raycast.nvim' })
vim.cmd.colorscheme('raycast-light')
```

Use `:colorscheme raycast-dark` to switch to the dark variant. Both schemes set
Neovim’s background and can be used in light and dark mode callbacks.

[MIT license](LICENSE)
