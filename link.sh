#!/bin/sh

ln -nsf "$HOME/.dotfiles/tmux.conf"     "$HOME/.tmux.conf"
ln -nsf "$HOME/.dotfiles/tmuxinator"    "$HOME/.tmuxinator"
ln -nsf "$HOME/.dotfiles/zsh"           "$HOME/.oh-my-zsh"
ln -nsf "$HOME/.dotfiles/zsh/zshrc.zsh" "$HOME/.zshrc"
# ln -nsf "$HOME/.dotfiles/xinitrc"       "$HOME/.xinitrc"
# ln -nsf "$HOME/.dotfiles/fehbg"         "$HOME/.fehbg"

mkdir -p "$HOME/.config/nvim"

ln -nsf "$HOME/.dotfiles/vim"           "$HOME/.vim"
ln -nsf "$HOME/.dotfiles/vim/vimrc"     "$HOME/.vimrc"
ln -nsf "$HOME/.dotfiles/vim/init.vim"  "$HOME/.config/nvim/init.vim"
# ln -nsf "$HOME/.dotfiles/mbsyncrc"      "$HOME/.mbsyncrc"
# ln -nsf "$HOME/.dotfiles/spacemacs.el"  "$HOME/.spacemacs"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -nsf "$HOME/.dotfiles/knihovny/base16-shell"  "$HOME/.config/base16-shell"
