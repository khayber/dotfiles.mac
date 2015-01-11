HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory extendedhistory incappendhistory histfindnodups sharehistory notify
bindkey -e
zstyle :compinstall filename '/home/ken/.zshrc'
autoload -Uz compinit
compinit

PS1=$'%{\e[01;32m%}%n@%m %{\e[01;34m%}%~ $%{\e[00m%} '

if [ $TERM = "xterm" ]; then TERM=xterm-256color; fi

autoload -U history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

if [ -t 1 ]; then
	bindkey "^[[A" history-beginning-search-backward-end
	bindkey "^[[B" history-beginning-search-forward-end
	bindkey "^[[H" beginning-of-line
	bindkey "^[[F" end-of-line
	bindkey ";5C" forward-word
	bindkey ";5D" backward-word
fi

source ~/.profile
