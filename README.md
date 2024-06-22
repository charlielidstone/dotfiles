# dotfiles

I'm new to Arch and Hyperland and still figuring things out.

**OS:** Arch\
**DE:** Hyprland\
**Terminal:** Kitty\
**Font:** JetBrainsMono Nerd Font\
**File Manager:** Nautilus\
**Lock Screen:** Hyprlock\
**Editor:** Neovim\
**Fetch:** Nitch

Waybar, Neovim, and other applications require a [Nerd Font](https://www.nerdfonts.com/font-downloads). Download a Nerd Font from the website, then place a single .ttf file into `~/.local/share/font` (which you might need to create). From there, simply set the font as the default terminal font in the terminal in which you use Neovim. Also, set the font as the default font in the waybar.conf file.

`git clone https://github.com/charlielidstone/dotfile.git`

Delete each of the following from `~/.config`:
- kitty
- hypr
- nvim
- waybar

Then, for each of the directories above, run the following command.

`ln -s ~/dotfiles/DIRECTORY-NAME ~/.config/DIRECTORY-NAME`
