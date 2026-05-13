# Neovim Quick Reference

**Leader key: `Space`**

---

## Navigation

| Key | Action |
|-----|--------|
| `Ctrl+d` | Scroll down, cursor stays centred |
| `Ctrl+u` | Scroll up, cursor stays centred |
| `Ctrl+a` | Select all |

---

## File Explorer (nvim-tree)

| Key | Action |
|-----|--------|
| `Space pv` | Toggle file tree |
| `Ctrl+n` | Reveal current file in tree |

Inside the tree: `Enter` opens, `a` creates, `d` deletes, `r` renames, `q` closes.

---

## Telescope (fuzzy finder)

| Key | Action |
|-----|--------|
| `Space ff` | Find any file |
| `Ctrl+p` | Find file tracked by Git |
| `Space ps` | Grep — prompts for a search string |

---

## Harpoon (quick file bookmarks)

| Key | Action |
|-----|--------|
| `Space a` | Bookmark current file |
| `Ctrl+e` | Open bookmark menu |
| `Ctrl+h` | Jump to bookmark 1 |
| `Ctrl+j` | Jump to bookmark 2 |
| `Ctrl+k` | Jump to bookmark 3 |
| `Ctrl+l` | Jump to bookmark 4 |

---

## LSP (via lsp-zero + ts_ls)

These work when a language server is attached:

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `K` | Hover docs |
| `gr` | Show references |
| `Space rn` | Rename symbol |
| `[d` / `]d` | Previous / next diagnostic |

**Autocomplete** (when the popup is open):

| Key | Action |
|-----|--------|
| `Ctrl+Enter` | Confirm selection |
| `Ctrl+j` | Next item |
| `Ctrl+k` | Previous item |
| `Esc` | Dismiss |

---

## Undotree

| Key | Action |
|-----|--------|
| `Space u` | Toggle undo history panel |

---

## Git (Fugitive)

| Key | Action |
|-----|--------|
| `Space gs` | Open Git status window |

Inside the status window: `s` stage, `u` unstage, `cc` commit, `dv` diff.

---

## Misc

| Key | Action |
|-----|--------|
| `Space x` | `chmod +x` the current file |
| `Space Space` | Re-source current file |
| `Space p` (visual) | Paste without overwriting clipboard |
| `J` / `K` (visual) | Move selected lines down / up |
| `Q` | Disabled (prevents accidental macro replay) |

---

## Plugin management (lazy.nvim)

| Command | Action |
|---------|--------|
| `:Lazy` | Open plugin manager UI |
| `:Lazy sync` | Install + update + clean |
| `:Lazy update` | Update plugins |
| `:Lazy clean` | Remove unused plugins |
