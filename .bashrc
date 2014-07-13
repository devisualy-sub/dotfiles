
# alias
alias sed="gsed"
alias ll="ls -l"
alias vi="vim"

#
# path
#
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="~/bin:$PATH"

# MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#
# git
#
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh

#
# ruby
#
eval "$(rbenv init -)"

#
# prompt
#
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="*'A') "'\[\033[32m\]\u@\h\[\033[00m\] \[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\] $ '

#
# history
#
shopt -s histappend

#
# init
#
clear

