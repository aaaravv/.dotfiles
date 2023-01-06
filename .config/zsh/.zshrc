### Init Starship
eval "$(starship init zsh)"

# Source Plugins & other files
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/sudo/sudo.plugin.zsh
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/.config/zsh/plugins/bgnotify/bgnotify.plugin.zsh

source ~/.config/zsh/functions
source ~/.config/zsh/settings.zsh

### ALIASES ###

# To edit configs files
alias zshc="$EDITOR ~/.config/zsh/.zshrc"
alias swayc="$EDITOR ~/.config/sway/config"

# Get back to last dir
alias .='cd -'

# Make a directory
alias md='mkdir'

alias devar='unset var'

# Fetch current dir path
alias pwd="pwd | wl-copy"

# ls - list directory
alias l='lsd'				# normal listing
alias l.='lsd -l -d .*'     # list dot files
alias ls='lsd -l'    		# default listing with colors
alias la='lsd -l -a'		# list all files and dirs 	    	

alias bt='bluetuith'

# pacman and yay
#--confirm turn off interactive prompt (yes/no)
alias pi='sudo pacman -S'							     				                     # install a package with [name]
alias yi='yay -S'									    									 # install a package with [name] (aur)
alias rem='sudo pacman -R'							     									 # remove a package with [name]
alias pacup='sudo pacman -Syyu'                          									 # update only standard pkgs
alias aurup='yay -Sua --noconfirm'                       									 # update only AUR pkgs (yay)
alias update='yay -Syu'                      									 # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'            									 # remove pacman lock
alias clean='yes | sudo pacman -R $(pacman -Qdtq) && sudo pacman -Rs - && sudo pacman -Rns'  # clean dependencies

# Colorize grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias crm='rm -rf -i'

# Clear console
alias clr='clear'

# Exec Vs-Code
alias vc='code .'

# Micro editor
alias m='micro'

# git
alias gau='git add -u'
alias gaa='git add .'
alias gb='git branch'
alias gbd='git branch -D'
alias gbrd='git push origin :' 
alias gco='git checkout'
alias gc='git clone'
alias gcm='git commit -m'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gmnf='git merge --no-commit --no-ff'
alias gpl='git pull origin'
alias gp='git push origin'
alias gr='git restore'
alias grao='git remote add origin'
alias grs='git restore --staged'
alias gs='git status'
alias grb='git rebase -i'
alias gl='git log'
alias glo='git log --pretty=oneline'
alias grh='git reset --hard'
alias gbl='git branch --list'

# Network (nmcli)
alias wcon='nmcli device wifi connect'	# connect to wifi with ssid
alias wl='nmcli device wifi list'     	# list wifi devices
alias ws='nmcli device status'       	# current network status

# Update font cache
alias ufc='sudo fc-cache -fv'

# Git Bare Repository
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Sort mirrors
alias um='sudo reflector --latest 5 --country US,IN --protocol https --sort rate --save /etc/pacman.d/mirrorlist'

# Mount drives with rclone
alias dm='rclone mount --daemon Personal: --drive-root-folder-id 1HmB_frdmthyAkA-lj1ZJNsX5ErCDlmlp  ~/Drives/Personal'

# Systemctl commands
alias sr='sudo systemctl restart'
alias ss='sudo systemctl stop'

# Sort recently installed packages
alias pkgs="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort"

# Flexing on others!
neofetch

#open ports
alias ports='sudo lsof -i -P -n | grep LISTEN'
