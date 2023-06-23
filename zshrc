# vim: set ft=zsh
# zmodload zsh/zprof

#export http_proxy=webproxy.merck.com:8080
#export HTTP_PROXY=webproxy.merck.com:8080
#export https_proxy=webproxy.merck.com:8080
#export HTTPS_PROXY=webproxy.merck.com:8080

export http_proxy=
export HTTP_PROXY=
export https_proxy=
export HTTPS_PROXY=

source "$HOME/.antidote/antidote.zsh"
antidote load "$HOME/.zsh/plugins.txt"

fpath=(~/.zsh/funcs "${fpath[@]}")

ZSH=$HOME/.zsh

HISTSIZE=10000
SAVEHIST=10000

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

bindkey '^ ' autosuggest-accept
unsetopt beep
bindkey -e

autoload -Uz select-word-style
select-word-style bash

# setopt prompt_subst
# source ~/.zsh/prompt.zsh

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

if [ -z "$VIM_VERSION" ]; then
  VIM_VERSION="nvim"
fi

export EDITOR="$VIM_VERSION"
export VISUAL="$VIM_VERSION"

alias vim="$VIM_VERSION"
alias vi="vim"
alias ra=ranger
alias s="git status"
alias gco='git checkout'
alias ga='git add'
alias gp='git push'
alias smart='cd ~/dev/smart'
alias prg='cd ~/dev' 

alias ga='git add'
alias gap='ga -p'
alias gau='git add -u'
alias gbr='git branch -v'
alias gb='gbr'
alias gbt='gbrt'
alias gba='gb --all'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='gca --amend'
alias gch='git cherry-pick'
alias gcm='git commit -v --amend'
alias gco='git checkout'
alias gcop='gco -p'
alias d='git diff -M'
alias gd='git diff -M'
alias gd.='git diff -M --color-words="."'
alias gdc='git diff --cached -M'
alias gdc.='git diff --cached -M --color-words="."'
alias gf='git fetch'
alias gfa='git fetch --all'
git-new() {
  mkdir "$1" &&
  cd "$1" &&
  git init &&
  touch .gitignore &&
  git add .gitignore &&
  git commit -m "Initial comit"
}
alias gl='git log --graph --pretty="format:%C(yellow)%h%C(auto)%d%Creset %s %C(white) %C(cyan)%an, %C(magenta)%ar%Creset"'
alias gla='gl --all'
alias glk="git-log-viewer"

gls() {
  query="$1"
  shift
  glog --pickaxe-regex "-S$query" "$@"
}
alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'
alias gp='git push'
alias gpt='gp --tags'
alias gr='git reset'
alias grb='git rebase -r'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grh='git reset --hard'
alias grp='gr --patch'
alias grsh='git reset --soft HEAD~'
alias grv='git remote -v'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
# alias gup='git smart-pull'
alias gup="git pull"
alias graf='git remote add $argv[1] $argv[2] && gf $argv[1]'
alias gt='git difftool'
alias gsu='git submodule update'
alias gw='git show'


stty sane

# Load all libs under
# for config_file in "$ZSH"/lib/*.zsh; do
#   source "$config_file"
# done

# completion settings
fpath=(~/.zsh/completion "${fpath[@]}")

autoload -Uz compinit
compinit -C

export LC_ALL=en_US.UTF-8

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="pygmalion"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

# zprof