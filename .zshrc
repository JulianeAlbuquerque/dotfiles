# -- Zsh -----------------------------------------------------------------------
# Path to your oh-my-zsh configuration.
ZSH="/Users/julianealbuquerque/.dotfiles/.oh-my-zsh"

# -- Editor --------------------------------------------------------------------
EDITOR="sublime"

# -- Theme ---------------------------------------------------------------------
# Set name of the theme to load.
# Look in /Users/julianealbuquerque/.dotfiles/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# -- Plugins -------------------------------------------------------------------
# Plugins can be found in /Users/julianealbuquerque/.dotfiles/.oh-my-zsh/plugins/
# Custom plugins may be added to /Users/julianealbuquerque/.dotfiles/.oh-my-zsh/custom/plugins/
#
# Which plugins would you like to load?
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(history-substring-search zsh-syntax-highlighting  git rvm brew bundler gem osx redis-cli)

# -- Oh My Zsh -----------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# -- Options -------------------------------------------------------------------
unsetopt correct_all
unsetopt correct

# -- Aliases -------------------------------------------------------------------
source $HOME/.dotfiles/.aliases

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

if [[ -f "$HOME/.aliases" ]]; then
    source $HOME/.aliases
fi

if [[ -f "$HOME/.azkfunctions.sh" ]]; then
    source $HOME/.azkfunctions.sh
fi

if [[ -f "$HOME/.projects" ]]; then
    source $HOME/.projects
fi

# -- Rbenv ---------------------------------------------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# -- Update --------------------------------------------------------------------
dotfiles
export PATH="$HOME/.azk/bin:$PATH"
