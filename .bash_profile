export PATH=/usr/local:/usr/local/sbin:/usr/local/bin:$HOME:$PATH

alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=/usr/local/bin:/usr/local/bin/sublime:/usr/local/mysql/bin:$PATH
export CC=/usr/local/bin/gcc-4.2
export NODE_ENV='development'

# Para ler o bash_aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/.azkfunctions.sh ]; then
    . ~/.azkfunctions.sh
fi

PS1='[\u:\[\033[1;33m\]\W\[\033[0m\]] \[\033[1;34m\]`~/.rvm/bin/rvm-prompt i v g` \[\033[1;36m\]$(__git_ps1) \[\033[0m\]$ '

[[ -s /Users/julianealbuquerque/.nvm/nvm.sh ]] && . /Users/julianealbuquerque/.nvm/nvm.sh # This loads NVM
export PATH="$HOME/.azk/bin:$PATH"
export PATH="$HOME/.azk/bin:$PATH"
export PATH="$HOME/.azk/bin:$PATH"
export PATH="$HOME/.azk/bin:$PATH"
