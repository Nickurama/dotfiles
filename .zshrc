
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"




# BASH UTILITY 

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'







# for the Node Version Manager (nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion






# OwO this is my domain now >:3

# Change umask to make directory sharing easier
umask 0002

# Ignore duplicates in comand history and increase
# history size to 1000 lines
export HISTCONTROL=ignoredups
export HISTSIZE=1000

# Add some helpful aliases
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'


# OwO terminal >:3
#PS1="\[\033[s\033[0;0H\033[0;41m\033[K\033[1;33m\t\033[0m\033[u\]<[UwUShell]\u@\h \W>\$ "
PS1="\[\033[1;35m\][OwO] \[\033[0;35m\]\u@\h \w\[\033[0;31m\]\$\[\033[0m\] "

# OwO terminal zsh version
PS1='%F{magenta}%B[OwO]%b %n@%m %~ %f%F{red}$%f '
export PS1

# Colors
RESET_COLOR='\033[0m'
PURPLE='\033[0;35m'
BOLD_PURPLE='\033[1;35m'

# The OwO
OWO='\033[1;35m\][OwO]'
OWO_PROMPT='\033[1;35m[OwO]\033[0m'

# OwO prompts <3
alias OwO='echo -e ${OWO_PROMPT} UwU'
alias UwU='echo -e ${OWO_PROMPT} OwO'
alias echowo='echo -e ${OWO_PROMPT}'

# nvim to path
export PATH="$PATH:/opt/nvim-linux64/bin"





# !!! IMPORTANT SETUP !!!

# goodies path
export PATH=$PATH:~/.goodies/custom_path

# dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# remaps caps to shift
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape_shifted_capslock']"
setxkbmap -option caps:escape_shifted_capslock
