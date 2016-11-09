# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Show contents of directory after cd-ing into it
chpwd() {
    ls -lrthG
}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew)

# Sourcing of other files
source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/zsh/aliases

# Configure Xocde Toolchain
export XCODE=`xcode-select --print-path`
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin:$XCODE/Tools"

# rbenv configurations
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

