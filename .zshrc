export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export GPG_TTY=$(tty)

export UPDATE_ZSH_DAYS=3

unsetopt inc_append_history
unsetopt share_history

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git aws gradle docker zsh-autosuggestions zsh-completions dotenv zsh-syntax-highlighting)

DISABLE_UNTRACKED_FILES_DIRTY="true"

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line
bindkey "\e[A" history-search-backward
bindkey "\e[B" history-search-forward

source $ZSH/oh-my-zsh.sh
source $HOME/.sdkman/bin/sdkman-init.sh

source $HOME/.awsrc
source $HOME/.dockerrc
source $HOME/.gitrc
source $HOME/.miscrc

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
