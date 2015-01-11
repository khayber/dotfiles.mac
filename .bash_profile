alias ls='ls -FC -G'
PATH=$PATH:/opt/bin

HISTCONTROL=ignoredups:ignorespace:erasedups
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s histappend
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

_git_branch() { branch=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' | cut -d' ' -f2 ) ; if [ ${branch} ]; then echo "(${branch})"; fi }

#PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$(_git_branch)\$\[\033[00m\] "
PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[00m\] "

bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

