#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
#export EDITOR=/usr/bin/vim
#export VISUAL=/usr/bin/vim

alias vim='/usr/bin/nvim'
#alias vim='/usr/bin/vim'


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
alias gr='cd $(git rev-parse --show-toplevel)'


# bash prompt
#source ~/.git-prompt.sh
#PS1='[\u@\h \W]\$ ' # original
PS1='\[\033[01;34m\][\[\033[01;32m\]\u\[\033[01;34m\] | \[\033[01;31m\]\W \[\033[01;34m\]] $ \[\033[00m\]'

# powerline setup
PW_ROOT='/usr/lib/python3.5/site-packages'
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. $PW_ROOT/powerline/bindings/bash/powerline.sh


stty -ixon

echo "###############################################################################"
echo "DONT' FORGET!!!"
echo

if [ -e ~/dont-forget.txt ]
then
	cat ~/dont-forget.txt
else
	echo "whatever..."
fi

echo
echo "###############################################################################"
