# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export DISABLE_UPDATE_PROMPT=true
export UPDATE_ZSH_DAYS=3

export HISTFILE=$HOME/.zsh_history

export AWS_REGION=us-west-2

export GRADLE_OPTS=-Dorg.gradle.daemon=false

export PATH="$HOME/Library/Python/3.9/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git aws gradle docker zsh-autosuggestions zsh-completions dotenv zsh-syntax-highlighting)

DISABLE_UNTRACKED_FILES_DIRTY="true"

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

unsetopt share_history

preexec() {
  export GPG_TTY=$(tty)
}
