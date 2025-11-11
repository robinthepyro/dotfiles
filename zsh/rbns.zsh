# robins zsh conf

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/robin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1999
SAVEHIST=1999
setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -e

bindkey "^N" clear-screen
bindkey -r "^L"





alias nini="systemctl poweroff"

alias sd="sudo docker"

# yes i use both
alias g="gitu"
alias gt="gitui"

# zathura pdf viewer
alias za="zathura --fork"

alias zj="zellij"

alias mk="musikcube"
# helix as hx
alias hx="helix"

# fastfetch as ff
alias ff="fastfetch"

# yazi as yz
alias y="yazi"

# python 3.12 as py312
alias py312="python3.12"

# activate to turn on venv
# this one is just silly tbh but I kept forgetting how to do it
alias activate="source .venv/bin/activate"

# calcurse as clc
alias clc="calcurse"


export EDITOR=helix
export VISUAL=helix
export CALCURSE_EDITOR=helix
export TERMINAL=kitty
export TERM=kitty
export ZIDE_DIR=$HOME/.config/zide

export RUSTICL_ENABLE="radeonsi"



# Script PATH
export PATH="$HOME/.scripts:$PATH"

# cargo bins
export PATH="$HOME/.cargo/bin:$PATH"

# .local/bin
export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/.config/zide/bin:$PATH"



# prompt
PS1=" %1~ ❯ "
RPROMPT="%F{241}%B%t%b%f"


function yz() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# zoxide
eval "$(zoxide init --cmd cd zsh)"
