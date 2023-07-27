# awesome-code-doc

Code annotation for [Awesome](https://github.com/awesomeWM/awesome) window manager. The annotations are supported by [lua-language-server](https://github.com/LuaLS/lua-language-server/).

For more information about annotations see the [wiki](https://github.com/LuaLS/lua-language-server/wiki/Annotations).

# Installation

Clone this repository:

    $ git clone https://github.com/kosorin/awesome-code-doc

# Setup

> **_NOTE:_** There are several ways to define the settings. See the [wiki](https://github.com/LuaLS/lua-language-server/wiki/Configuration-File) for more information.


## .luarc.json ([lua-ls](https://github.com/LuaLS/lua-language-server/wiki/Libraries#placing-in-your-workspace))

Add a .luarc.json to your config directory.
In it, add the path to the cloned repository to the `workspace.library` setting:

```json
{
    "workspace.library": [
        "/path/to/awesome-code-doc"
    ]
}
```

## VS Code ([Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) extension)

Add the path to the cloned repository to the `Lua.workspace.library` setting:

```json
{
  "Lua.workspace.library": ["/home/user/path/to/awesome-code-doc"]
}
```

## Neovim ([nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) plugin)

Add the path to the cloned repository to `settings.Lua.workspace.library` setting:

```lua
require("lspconfig")["lua_ls"].setup({
  settings = {
    Lua = {
      workspace = {
        library = {
          -- other library definition...
          ["/path/to/awesome-code-doc"] = true
        }
      }
    }
  }
})
```

## Lite-XL ([lite-xl-lsp](https://github.com/lite-xl/lite-xl-lsp) plugin)

Add the path to the cloned repository to `settings.Lua.workspace.library` setting:

```lua
require("plugins.lsp").add_server {
    name = "lua-language-server",
    language = "lua",
    file_patterns = { "%.lua$" },
    command = { 'lua-language-server' },
    verbose = false,
    settings = {
        Lua = {
            workspace = {
                library = {
                    ["/path/to/awesome-code-doc"] = true
                }
            }
        }
    }
]
```
