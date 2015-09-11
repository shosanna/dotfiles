# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim $HOME/.zshrc"
alias ohmyzsh="vim $HOME/.oh-my-zsh"
alias prg="cd $HOME/Programming/"

BASE16_SHELL="$HOME/.config/base16-shell/base16-atelierdune.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EDITOR="vim"

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# aliases
alias s='git status -sb $argv; return 0'
alias g='git'
alias ga='git add'
alias gap='ga -p'
alias gau='git add -u'
alias gbr='git branch -v'
alias gb='gbr'
alias gbt='gbrt'
alias gc="git commit -v"
alias gca='git commit -v -a'
alias gcam='gca --amend'
alias gch='git cherry-pick'
alias gcm='git commit -v --amend'
alias gco='git checkout'
alias gcop='gco -p'
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
  git commit -m "Added .gitignore."
}
alias glog='git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='glog --graph'
alias gla='gl --all'
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
alias grb='git rebase -p'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grh='git reset --hard'
alias grp='gr --patch'
alias grsh='git reset --soft HEAD~'
alias grv='git remote -v'
alias gs='git status'
#alias gs='git show'
#alias gs.='git show --color-words="."'
alias gst='git stash'
alias gstp='git stash pop'
alias gup='git smart-pull'
gupstation() {
  gup
  gf production
  gf staging
}
alias graf='git remote add $argv[1] $argv[2] && gf $argv[1]'
alias gt='git difftool'
alias gsu='git submodule update'
alias pe='pacman -Ss'
alias pq='pacman -Ssq'
alias pi='sudo pacman -S'

alias tmux="TERM=xterm-256color tmux"
export TERM="xterm-256color"
