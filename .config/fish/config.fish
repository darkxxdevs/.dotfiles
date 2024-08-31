
##################################################################################
###██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗    ███████╗██╗███████╗██╗  ██╗###
##██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝    ██╔════╝██║██╔════╝██║  ██║###
##██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗   █████╗  ██║███████╗███████║###
##██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║   ██╔══╝  ██║╚════██║██╔══██║###
##╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝██╗██║     ██║███████║██║  ██║###
##╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝####
##################################################################################

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

#echo "i use arch btw!!! >_<"
# uptime

#initializing the starship prompt 
starship init fish | source

#git bare repository control alias 
function dotfiles
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end


# Start SSH agent if not already running
# if not pgrep -u $USER ssh-agent > /dev/null
#     eval (ssh-agent -c)
#     ssh-add ~/.ssh/id_ed25519
# end
#
# using linter for golang
function gci 
	$HOME/go/bin/golangci-lint
end



# shell variables 
set -x BROWSER "brave"
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin


# accepting autosuggestions using TAB 
bind \t accept-autosuggestion

#setting up some of my alias 
alias vim="nvim"
alias ls="exa --icons"
alias sd="cd ~ && cd \$(find . -type d | sed 's|^\./||' | fzf)"
alias la="ls -A"
alias ll="ls -alF"
alias l='ls -CF'
alias cl="clear"
alias l="ls -CF"

# shell path variables 
set -gx PATH $PATH $HOME/.config/composer/vendor/bin

#sdk man config
set -U fish_user_paths $HOME/.sdkman
set -g __sdkman_custom_dir $HOME/.sdkman/bin/sdkman-init.sh

#android sdk path
set -x ANDROID_HOME "$HOME/Android/Sdk"
# react native packager hostname
set -x REACT_NATIVE_PACKAGER_HOSTNAME 192.168.1.40

#shell path for elixir-ls
set -gx PATH $PATH $HOME/.local/share/nvim/mason/bin

# sourcing various packages 

 set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/darkxx/.ghcup/bin $PATH # ghcup-env

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
