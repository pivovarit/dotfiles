export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

ZSH_THEME="bureau"

plugins=(git aws docker zsh-autosuggestions zsh-completions dotenv osx)

DISABLE_UNTRACKED_FILES_DIRTY="true"

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line
bindkey "\e[A" history-search-backward
bindkey "\e[B" history-search-forward

export UPDATE_ZSH_DAYS=1

source $ZSH/oh-my-zsh.sh
source $HOME/.sdkman/bin/sdkman-init.sh

source $HOME/.awsrc
source $HOME/.dockerrc
source $HOME/.gitrc
source $HOME/.miscrc
