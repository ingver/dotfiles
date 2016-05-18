#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# neovim aliases
alias vim='/usr/bin/nvim'


# ls aliases
alias la='ls -a'
alias l1='ls -1'
alias ls='ls --color=auto'


#pacman aliases
alias inst='sudo pacman -S '
alias apps='sudo pacman -Ss ' 

# make aliases
alias maek='make '
alias mak='make '

# count files
alias cnt='ls | wc -l '
alias cnta='ls -a | wc -l '


# git aliases
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git'
alias get='git'
alias gha='git hist --all'
alias ghl='git hist --all | more'
alias gh='git hist'


# bash prompt
#source ~/.git-prompt.sh
#PS1='[\u@\h \W]\$ ' # original
PS1='\[\033[01;34m\][\[\033[01;32m\]\u\[\033[01;34m\] | \[\033[01;31m\]\W \[\033[01;34m\]] $ \[\033[00m\]'


stty -ixon
