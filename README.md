# beltza's dotfiles

This repo contains the dotfiles I currently use, updated every so often.

## This repo provides my dots for...

+ neovim 
+ zsh
+ bspwm + sxkhd
+ polybar
+ dunst
+ awesomewm (although I don't use it anymore)
+ alacritty

## Installation requirements

### neovim

Install `neovim-git` from the AUR (preferred), or just install `neovim` from your regular package manager. Copy the nvim folder to your own .config folder, then launch nvim, and execute `:PlugInstall` to install all the plugins.

Check out `.config/nvim/scripts` to learn more about the keybinds, plugins, etc.

### bspwm + polybar + sxkhd + dunst

Install the `bspwm`, `sxkhd`, `dunst`, `feh` and `polybar` (AUR on arch) packages, and copy their respectives folder to your .config. Then, edit `.config/sxkhd/sxkhdrc` to your liking (it's, by default, configured with azerty keys in mind). That should get you with a working bspwm.

I would recommend checking the scripts in the `.config/bspwm` folder to manage autostart programs.

### alacritty

Install the `alacritty` package, or the `alacritty-ligatures` (AUR) packages if you want to use ligatures in your favourite font. Copy the `alacritty.yml` file to your .config folder, then edit it in order to choose your favourite font (I personally chose to use the JetbrainsMono Nerd Font).

### zsh

Install zsh and make it your default shell. Then, install `zsh-autosuggestions` and `zsh-syntax-highlighting` with the manual install method to get all the fancy stuff I like. Also install `fzf` to have the nice fuzzy finder keybindings.

To get the prompt working, you'll need to install [starship prompt](https://starship.rs/), and copy the `starship.toml` file to your .config. Once that's done, also make sure you have `thefuck` and `fortune` installed for the best experience.
