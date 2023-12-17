HISTFILE=~/.histfile
HISTSIZE=10000000000
SAVEHIST=10000000000

# vi mode {
bindkey -v
export KEYTIMEOUT=1
# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[6 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[6 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[2 q' ;} # Use beam shape cursor for each new prompt.# # End of lines configured by zsh-newuser-install
# }

# # The following lines were added by compinstall
zstyle :compinstall filename '/home/solo/.zshrc'


autoload -Uz compinit
compinit

autoload bashcompinit
bashcompinit

autoload -U promptinit
promptinit

#set opts 
setopt correct_all

#keybindings
bindkey -s '^o' 'lfcd\n' 
bindkey '^R' history-incremental-search-backward
bindkey "^H" backward-kill-word

#: Zsh tab menu {
zstyle ':completion:*' menu select
zmodload zsh/complist
# use the vi navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history 
#}

#: Alias{{{
alias filepath="readlink -f"
alias remove="sudo pacman -Rs"
alias rdep="sudo pacman -Rs $(pacman -Qdqt)"
alias get="sudo pacman -S"
alias update="sudo pacman -Syu"
alias datetime="date +%r"
alias icat="kitty +kitten icat"
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'
alias task='nocorrect task'
alias figlet='nocorrect figlet'
alias weather="noglob curl https://wttr.in/?m0pq"
alias discps="bg;disown %1"
alias cmatrix='unimatrix -n -s 96 -l o'
alias findp="find -follow -iname"
alias dict="nocorrect sdcv"
alias sbcl="nocorrect rlwrap sbcl"
alias copium="codium"
alias offsavescreen="xset off;xset -dpms"
alias onsavescreen="xset on; xset +dpms"
alias ocaml="nocorrect ocaml"
alias vim="nvim"
alias rm="trash"
alias cal="nvim -c 'CalendarT'"
alias vimwiki="nvim -c 'VimwikiIndex'"
alias cat="bat"
alias ls="exa"
alias c="z"
alias agenda-week="emacs -batch -l ~/.doom.d/custom.el -eval '(org-batch-agenda \"a\")'"
alias agenda="emacs -batch -l ~/.doom.d/custom.el -eval '(org-batch-agenda \"a\" org-agenda-span (quote day))'"
alias host="nocorrect host"
alias dboxxfw="xhost +si:localuser:$USER"
alias s="kitty +kitten ssh"
alias screenstayon="sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target;xset s off;xset -dpms"
alias screenstayonr="sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target;xset s on;xset +dpms"
alias watt="awk '{print \$1*10^-6 \" W\"}' /sys/class/power_supply/BAT0/power_now"
alias lg="lazygit"
alias v="nvim"
alias e="TERM=xterm-direct emacsclient -nw"
alias se="TERM=xterm-direct sudo emacsclient -nw"
alias dired="ec -e '(dired \".\")'"
alias g="ls | grep"
alias p="pacman"
alias y="yay"
alias hey="nocorrect hey"
alias man="batman"
woman() {
  ec --eval "(woman \"$1\")"
}

#: }}}

#: Environment Variables{{{
export EDITOR="nvim"
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export STARDICT_DATA_DIR=$XDG_DATA_HOME
export GOPATH=$HOME/Documents/projects/go
export DPRINT_INSTALL="/home/solo/.dprint"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$DPRINT_INSTALL/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/my_programs:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export DICPATH="/home/solo/.local/share/dict"
#: }}}

#: Plugins{{{
#autosuggest
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#fish like syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#lfcd
source ~/.config/lf/lfcd.sh
#zsh sudo plugin 
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh 
#: }}}

eval "$(zoxide init zsh)"
# starship prompt
eval "$(starship init zsh)"


# add apt like binary package suggestions
source /usr/share/doc/find-the-command/ftc.zsh noprompt noupdate
