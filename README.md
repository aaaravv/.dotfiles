![logo](https://dotfiles.github.io/images/dotfiles-logo.png)
-
<div align="center"> 
	<b>Dotfiles for My <a href="https://github.com/Aarav619/Sway-On-Arch">Daily Driver</a></b>.
</div>

## Installation

Install ~/. with git

```bash
  git clone https://github.com/Aarav619/dotfiles.git && cd dotfiles
```
## Usage

`make install` : Install entire setup

`make update` : Sync local dotfiles with git


# Cleaning ~/

Use these environment variables to specify default configuration directory for softwares & packages.

```bash
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
```

- more can be found at [XDG BASE DIRECTORY SPECIFICATIONS](https://wiki.archlinux.org/title/XDG_Base_Directory).

### Remember
The only true way to be a minimalist is to recursively force rm your entire ~/!


## Credits

Credits to [JITESH](https://github.com/pixxel8/) for his custom  [fuzzy functions](https://github.com/pixxel8/dotfiles/blob/master/shell/fzfrc).