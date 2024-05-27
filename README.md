# Fennel + Love2D + Neovim

This template is based on the [min-love2d-fennel](https://gitlab.com/alexjgriffith/min-love2d-fennel) repository with two differences:

- get rid of everything that is not absolutely necessary to avoid any clutter
- adapt the documentation for the usage with [Neovim](https://neovim.io/) and [Conjure](https://github.com/Olical/conjure) (as this is what I use)

## What you do need

[love2d](https://love2d.org/) needs to be installed and available on *PATH*

## What you do **NOT** need

- you **don't** need Lua to be installed
- you **don't** need LuaRocks to be installed
- you **don't** need Fennel to be installed

> Everything Lua related is handled by `love2d`

## Usage with Neovim and Conjure

**Setup**

If you have `set exrc` you can just open `game.fnl` and the game will start automatically.
If not you must execute the commands in `.nvim.lua` manually first.  I.e.

- execute `:lua vim.g['conjure#filetype#fennel'] = "conjure.client.fennel.stdio"` **before** opening the project
- execute `:lua vim.g['conjure#client#fennel#stdio#command'] = "love ."` **before** opening the project
- open `game.fnl` and `love` should start the game automatically

**Reload**

In order to hot reload changes made to the code use `ConjureFnlEvalReload`

> The default keybinding is `<localleader>eF`

**Modify**

You can edit the game's state with ease from the REPL:

```clojure
(set state.x 50)
(tset state :y 100)
```

## Credits

- [love2d](https://love2d.org/) for making game development in Lua possible
- [min-love2d-fennel](https://gitlab.com/alexjgriffith/min-love2d-fennel) for the inspiration and especially for `lib/stdio.fnl`
- The [Conjure](https://github.com/Olical/conjure) plugin for the awesome editing experience in Neovim
