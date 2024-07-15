#
# ~/.bashrc
#



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# colored bash prompt
export PS1="\[\e[36m\][\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[31m\]\W\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[31m\]\\$\[\e[m\] "

# enables color
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias pactree='pactree --color'
alias sudo='sudo '
#alias info='pinfo'
export MANPAGER="less -R --use-color -Dd+g -Du+b -Ds+r -DS+r -DP+r -DE+r"
export MANROFFOPT="-P -c"

# enables vi keys for info pages
alias info='info --vi-keys'

# enables cd auto-correct
shopt -s cdspell

# rewrap text on window resize
shopt -s checkwinsize

# run fastfetch on terminal startup
fastfetch

# enable thefuck
eval "$(thefuck --alias)"

# aliases
alias lock='swaylock'
# update the system
alias update='sudo snapshot-pre-update.sh && paru && flatpak update && sudo systemctl start update.service'
# before running nmtui, restart NetworkManager
alias nmtui='sudo systemctl restart NetworkManager && nmtui'

# wayland environment variables (see the "wayland" arch wiki page, and the hyprland wiki)
export GDK_BACKEND="wayland,x11"
export QT_QPA_PLATFORM="wayland;xcb"
export XDG_SESSION_TYPE=wayland
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

# system environment variables
export TERMINAL=alacritty
export EDITOR=nvim
export PAGER=bat
export BAT_THEME=ansi

# theme environment variables (see arch wiki pages "GTK#Themes" and "Qt#Configuration")
export ADW_DISABLE_PORTAL=1
#export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=adwaita-dark





# nnn config environment variables
##################################

# bookmarks
#export NNN_BMS="path1;path2;etc"

# assign keybinds to plugins
export NNN_PLUG='f:finder;o:fzopen;p:preview-tui'

export PROMPT_COMMAND="resize &>/dev/null; $PROMPT_COMMAND"
