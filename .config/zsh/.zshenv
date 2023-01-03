### EXPORTS
# XDG base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export _Z_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/z"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_THEME="Dracula"
export BAT_STYLE=changes

# ZSH History
export HISTFILE="$XDG_CONFIG_HOME/zsh/history"
export HISTFILESIZE=1000
export HISTSIZE=1000
export SAVEHIST=1000
export HISTTIMEFORMAT="[%F %T] "

export TERM="alacritty"
export VCODE="code"
export EDITOR="micro"
export MICRO_TRUECOLOR=1
export VIDEO="mpv"
export BROWSER="firefox"
export MOZ_ENABLE_WAYLAND=1
# export GTK_THEME=paradise nautilus

# For Android Studio
export _JAVA_AWT_WM_NONREPARENTING=1
export STUDIO_JDK=/usr/lib/jvm/java-11-openjdk

# For Gradle
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

#FZF
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#d0d0d0,bg:#121212,hl:#5f87af
 --color=fg+:#d0d0d0,bg+:#262626,hl+:#5fd7ff
 --color=info:#afaf87,prompt:#d7005f,pointer:#af5fff
 --color=marker:#87ff00,spinner:#af5fff,header:#87afaf'
