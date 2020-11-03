# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

### Aliases ###

# Yay
alias yain="yay -S"
alias yaupg="yay -Syu"

# Vim
alias vim="nvim"

# Directory navigation
alias cdF="cd ~/.config/fish"
alias cdT="cd ~/.config/alacritty"
alias cdV="cd ~/.config/nvim"
alias cdA="cd ~/.config/awesome"

# Common
alias yeet="rm -rf"
alias copy="cp -r"

# Dark mode
# wal --theme monochrome -q 

# Light mode
# wal --theme monochrome-light -l -q 

wal -i ~/Wallpapers/deer_minimalist.jpg
