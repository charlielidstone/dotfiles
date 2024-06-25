# dotfiles

I'm new to Arch and Hyperland and still figuring things out.

**OS:** Arch\
**DE:** Hyprland\
**Terminal:** Kitty\
**Font:** JetBrainsMono Nerd Font\
**File Manager:** Nautilus\
**Lock Screen:** Hyprlock\
**Editor:** Neovim\
**Fetch:** Nitch\
**Wallpapers:** swww

## Setup

**0. Install important things**
#### Yay
1. `git clone https://aur.archlinux.org/yay.git`
2. `cd yay`
3. `makepkg -si`

####Cargo
`sudo pacman -S cargo`

**1. Install Nerd Font**

Waybar, Neovim, and other applications require a [Nerd Font](https://www.nerdfonts.com/font-downloads). Download a Nerd Font from the website, then place a single .ttf file into `~/.local/share/font` (which you might need to create). From there, simply set the font as the default terminal font in the terminal in which you use Neovim. Also, set the font as the default font in the waybar.conf file.

#### 3. Install git
Start by installing git:\
`sudo pacman -S git`

#### 4. Clone repo
Then clone this repo into your home directory:\
`git clone https://github.com/charlielidstone/dotfile.git`

#### 5. Remove default configs
Delete each of the following from `~/.config`:
- kitty
- hypr
- nvim
- waybar

#### 6. Create links to repo directories
Then, for each of the directories above, run the following command.

`ln -s ~/dotfiles/DIRECTORY-NAME ~/.config/DIRECTORY-NAME`


## Additional Packages and cool things

### [Nitch](https://github.com/ssleert/nitch)
`wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh`

### [Waybar](https://github.com/Alexays/Waybar)
`sudo pacman -S waybar`

### Bashtop
`sudo pacman -S bashtop`

### Discord
`sudo pacman -S discord`

### Steam
1. [Enable the multilib directory](https://wiki.archlinux.org/title/Official_repositories#Enabling_multilib)
2. Install:\
   `sudo pacman -S steam`

### swww - Wallpaper manager
> If you did not install cargo earlier, do so now: `sudo pacman -S cargo`
1. Clone repo into home:\
   `git clone https://github.com/LGFae/swww.git`
3. Build:\
   `cargo build --release`

## Wallpapers
- [DragonDev07/Wallpapers](https://github.com/DragonDev07/Wallpapers)
- [Gingeh/wallpapers](https://github.com/Gingeh/wallpapers)
