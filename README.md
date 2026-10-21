# How to setup

```bash
chezmoi init --apply Jacob-Clay
```

## Neovim plugin versions

`nvim-state/lazy-lock.json` is a known-good snapshot of plugin versions, not a
live file. Each machine keeps its own `~/.config/nvim/lazy-lock.json` that lazy
can update freely without touching this repo. Whenever the snapshot changes,
`chezmoi apply` / `chezmoi update` resets the local lock to it and runs
`Lazy! restore`.

After updating plugins and checking everything works, save the new versions for
every machine with:

```bash
nvim-lock-save
```

Which plugins are installed is set by `lua/plugins/` and
`nvim-state/lazyvim.json` (the LazyVim extras), which are still tracked as normal.
