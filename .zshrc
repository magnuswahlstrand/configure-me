# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/test/.oh-my-zsh

ZSH_THEME=bira

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
   autojump
   themes
   colored-man-pages
   git
   pip
   docker
   macos
   vscode
   sudo
   npm
   catimg
   chucknorris
   kubectl
   autoswitch_virtualenv
)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vsca ~/.zshrc"
alias src="source ~/.zshrc"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  bash $(brew --prefix)/etc/bash_completion
fi

export GOPATH=~/go
export GOBIN="$GOPATH/bin"
export PATH=$PATH:$GOBIN

autoload -U +X bashcompinit && bashcompinit
autoload -U compinit && compinit

export EDITOR=/usr/local/bin/emacs
export VISUAL=/usr/local/bin/goland

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"