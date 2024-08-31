# Source p10k instant prompt, if available
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setup Zinit installation directory
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Check if Zinit is installed, if not, clone it
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

  #
  # if command -v ngrok &>/dev/null; then
  #   eval "$(ngrok completion)"
  # fi

# Source Zinit script
source "${ZINIT_HOME}/zinit.zsh"

# Install Zsh plugins using Zinit
# zinit light ohmyzsh/ohmyzsh
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light Aloxaf/fzf-tab

# Case insensitive completion configuration
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' fzf-preview 'ls --color $realpath'


export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
# Initialize completion system
autoload -Uz compinit && compinit

# Source the powerlevel10k theme configuration file
# source ~/.p10k.zsh

# Function to handle neovim startup inside tmux

nvim() {
  if [[ -z $TMUX ]]; then
    echo "Enter Session Name (or 'skip' to use current directory): "
    read name
    if [[ $name == "skip" ]]; then
      name=$(basename "$PWD")
    fi
    tmux new-session -s "$name" "command nvim $*"
  else
    command nvim "$@"
  fi
}

# Function to print local IP addresses, excluding loopback
localip() {
    ifconfig | grep "inet " | grep -v 127.0.0.1
}

# Define aliases
alias ls='ls --color'
alias globalip='curl ifconfig.me'
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# Shell integration for fzf
eval "$(fzf --zsh)"

# History management
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory sharehistory hist_ignore_space hist_ignore_all_dups

# Disable Powerlevel10k configuration wizard on startup
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

eval "$(fnm env --use-on-cd)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
eval "$(pyenv init --path)"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/opt/openldap/bin:$PATH"
export PATH="/opt/homebrew/opt/openldap/sbin:$PATH"
export PATH="/opt/homebrew/opt/openldap/bin:$PATH"
export PATH="/opt/homebrew/opt/openldap/sbin:$PATH"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/ypathan/.dart-cli-completion/zsh-config.zsh ]] && . /Users/ypathan/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
