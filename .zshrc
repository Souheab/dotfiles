# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/solar/.zshrc'



autoload -Uz compinit
compinit
# End of lines added by compinstall

#set opts{{{ 
setopt correct_all
#}}}

#lf bind
bindkey -s '^o' 'lfcd\n' 
# history search bind
bindkey '^R' history-incremental-search-backward

#: Zsh tab menu {{{

zstyle ':completion:*' menu select
zmodload zsh/complist
# use the vi navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


#: Prompt{{{ 
PROMPT="[%F{blue}%~%f] "  
RPROMPT=''


#: Alias{{{
#add the pacman -R alias thingy ykwim
alias filepath="readlink -f"
alias remove="sudo pacman -Rs"
alias rdep="sudo pacman -Rs $(pacman -Qdqt)"
alias get="sudo pacman -S"
alias update="sudo pacman -Syu"
alias time="date +%r"
alias icat="kitty +kitten icat"
alias ls="ls --color=auto"
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'
alias task='nocorrect task'
alias weather="noglob curl https://wttr.in/?0pq"
alias cd="z"
#: Evnironment Variables{{{
export EDITOR=nvim
#: }}}



#: Plugins{{{

#z plugin
source /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh
#autosuggest
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#fish like syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#lfcd
source ~/.config/lf/lfcd.sh
#zsh sudo plugin
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh 
