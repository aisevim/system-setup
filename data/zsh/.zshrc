export ZSH="$HOME/.oh-my-zsh"

# https://github.com/agnoster/agnoster-zsh-theme
ZSH_THEME="agnoster"

CASE_SENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='code'
fi

# Aliases
alias ll='ls -alF'
alias l="ls -lF ${colorflag}" 
alias lss='ls -Ahq --group-directories-first --color'
alias cc="clear"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
