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
uptime

#initializing the starship prompt 
starship init fish | source

#git bare repository control alias 
function dotfiles
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end

# using linter for golang
function gci 
	$HOME/go/bin/golangci-lint
end

# function for running dlv the debugger for go (if available)
function dlv
	$HOME/go/bin/dlv
end

# shell variables 
set -x BROWSER "brave"

#zeoxide
zoxide init fish | source

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
alias cd="z"

# shell path variables 
set -gx PATH $PATH $HOME/.config/composer/vendor/bin

#cargo 
set -gx PATH $PATH $HOME/.cargo/bin

#sdk man config
set -U fish_user_paths $HOME/.sdkman
set -g __sdkman_custom_dir $HOME/.sdkman/bin/sdkman-init.sh


# sourcing various packages 

 set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/darkxx/.ghcup/bin $PATH # ghcup-env

