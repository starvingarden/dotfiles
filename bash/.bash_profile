#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# add directories to $PATH
#export PATH=/home/kaleb/.bin:$PATH
export PATH=~/.bin:~/.nix-profile/bin:$PATH

# start sway on login
#exec sway

# start hyprland on login
#exec Hyprland
