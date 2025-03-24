# robins zsh conf


zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/robin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=999
SAVEHIST=999
setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -v



# mvp, helix editor line editing in shell
source ~/.config/zsh/zsh-helix-mode/helix-mode.zsh



# helix as hx
alias hx="helix"

# python 3.12 as py312
alias py312="python3.12"

# activate to turn on venv
alias activate="source .venv/bin/activate"

# fastfetch as ff
alias ff="fastfetch"

# yazi as yz
alias yz="yazi"

# calcurse as clc
alias clc="calcurse"


export EDITOR=helix
export VISUAL=helix
export CALCURSE_EDITOR=helix
export XKB_DEFAULT_OPTIONS=caps:escape
export TERMINAL=kitty
export TERM=kitty
export QT_QPA_PLATFORMTHEME=qt6ct

# open helix with vv (for long cmds)
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd "vv" edit-command-line

# bun completions
[ -s "/home/robin/.bun/_bun" ] && source "/home/robin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Script PATH
export PATH="/home/robin/.scripts:$PATH"

# cargo bins
export PATH="/home/robin/.cargo/bin:$PATH"

# .local/bin
export PATH="/home/robin/.local/bin:$PATH"

# prompt
PS1=" %1~ ❯ "
RPROMPT="%F{241}%B%t%b%f"

# zoxide
eval "$(zoxide init --cmd cd zsh)"
