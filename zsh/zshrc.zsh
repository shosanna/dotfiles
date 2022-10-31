# zmodload zsh/datetime
# setopt PROMPT_SUBST
# PS4='+$EPOCHREALTIME %N:%i> '
#
# logfile=$(mktemp zsh_profile.XXXXXXXX)
# echo "Logging to $logfile"
# exec 3>&2 2>$logfile
#
# setopt XTRACE

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.dotfiles/zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="norm"
ZSH_THEME="darth"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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

export PATH="$HOME/.dotfiles/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH="$HOME/Programming/go"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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
alias vimconfig="vim $HOME/.vimrc"
alias tmuxconfig="vim $HOME/.tmux.conf"
alias prg="cd $HOME/Programming"
alias i3config="vim $HOME/.config/i3/config"

#BASE16_SHELL="$HOME/.config/base16-shell/base16-pop.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
export PATH="$HOME/.node_modules/bin:$HOME/.rbenv/bin:$PATH"

# if command -v rbenv; then
#   eval "$(rbenv init -)"
# fi

export PATH="$HOME/Programming/go/bin:$PATH"
export EDITOR="nvim"
export VISUAL="nvim"

alias vi="vim"
alias vim="nvim"

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# aliases
alias s='git status -sb $argv; return 0'
alias d='git diff'
alias g='git'
alias ga='git add'
alias gap='ga -p'
alias gau='git add -u'
alias gbr='git branch -v'
alias gc="git commit -v"
alias gca='git commit -v -a'
alias gcam='gca --amend'
alias gch='git cherry-pick'
alias gco='git checkout'
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
alias gr='git reset'
alias grb='git rebase -p'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grh='git reset --hard'
alias grp='gr --patch'
alias grsh='git reset --soft HEAD~'
alias grv='git remote -v'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gup='git pull'


alias tmux="TERM=xterm-256color tmux"
export TERM="xterm-256color"

alias b="bundle"
alias r="rails"
alias rdms="rake db:drop db:create db:migrate db:seed"

alias pi="sudo pacman -S"
alias pq="pacman -Ssq"
alias pe="pacman -Ss"

alias ra="ranger --cmd='set show_hidden=true'"

# export BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
# 
# # base16_unikitty-dark
# base16_zenburn

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function reload() {
  source ~/.zshrc
}

alias re="reload"

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

function pgdisc() {
  echo "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE datname = current_database() AND pid <> pg_backend_pid();" | psql $1
}

function rbenv-update() {
  RBENV="$HOME/.rbenv"
  RUBY_BUILD="$RBENV/plugins/ruby-build"

  if [ -d "$RBENV" ]; then
    cd ~/.rbenv
    git pull

    if [ -d "$RUBY_BUILD" ]; then
      cd "$RUBY_BUILD"
      git pull
    else
      git clone https://github.com/rbenv/ruby-build.git "$RUBY_BUILD"
    fi
  else
    git clone https://github.com/rbenv/rbenv.git "$RBENV"
    git clone https://github.com/rbenv/ruby-build.git "$RUBY_BUILD"
  fi
}

function dot-update() {
  cd "$HOME/.dotfiles"
  rbenv-update
  git smart-pull
  reload
}

function dot() {
  cd "$HOME/.dotfiles"
}

source ~/.dotfiles/.tmuxinator.zsh

# alias mysql_liid='mycli -p 3306 -u root -p "" -D liid.io_development'

alias rake="command bundle exec rake"
alias rails="command bundle exec rails"
alias rspec="command bundle exec rspec"

# alias mpo="mrk-proxy-on"
# alias mpf="mrk-proxy-off"

export FZF_DEFAULT_COMMAND='ag -g ""'

[ -f "$HOME/.profile" ] && source "$HOME/.profile"

export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# if [ -f /Users/arnoldov/mrk-proxy/mrk-proxy ]; then
#   . /Users/arnoldov/mrk-proxy/mrk-proxy
# fi
#
# mrk-proxy-on

# if command -v brew; then
#   export PATH="$(brew --prefix qt)/bin:$PATH"
# fi

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
#   # eval "$(command pyenv virtualenv-init -)"
# fi

export PATH=~/.local/bin:$PATH

# unsetopt XTRACE
# exec 2>&3 3>&-

alias dirt="docker run -it --rm"
alias m="neomutt"
alias de="deactivate"
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias aur="auracle"
alias to="vim ~/.todo/main.txt"

fpath=(~/.dotfiles/zsh/funcs "${fpath[@]}")
autoload -Uz $(print ~/.dotfiles/zsh/funcs/*(:t))

if [[ $(hostname) == "kolacek" ]]; then
  export QT_SCALE_FACTOR=2
  export GDK_SCALE=2
fi

if command -v gpgconf; then
  export GPG_TTY="$(tty)"
  export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
  gpgconf --launch gpg-agent
# TODO: when exactly is this needed?
  gpg-connect-agent updatestartuptty /bye > /dev/null
fi

alias d="git diff"

# if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#   exec startx
# fi

# eval "$(rbenv init -)"
export PATH="/usr/local/opt/qt/bin:$PATH"

export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.todo/bin:$PATH"

eval "$(direnv hook zsh)"
export CARGO_NET_GIT_FETCH_WITH_CLI=true
