if [ $TERM == "xterm" ]; then TERM=xterm-256color; fi

HISTCONTROL=ignoredups:ignorespace:erasedups
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

if [ -t 1 ]; then
	bind '"\e[A"':history-search-backward
	bind '"\e[B"':history-search-forward
fi

set show-all-if-ambiguous on
source ~/.profile
