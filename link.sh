#!/bin/sh

ln -nsf "$HOME/.dotfiles/tmux.conf"     "$HOME/.tmux.conf"
ln -nsf "$HOME/.dotfiles/tmuxinator"    "$HOME/.tmuxinator"
ln -nsf "$HOME/.dotfiles/zsh"           "$HOME/.oh-my-zsh"
ln -nsf "$HOME/.dotfiles/zsh/zshrc.zsh" "$HOME/.zshrc"
# ln -nsf "$HOME/.dotfiles/xinitrc"       "$HOME/.xinitrc"
# ln -nsf "$HOME/.dotfiles/fehbg"         "$HOME/.fehbg"
ln -nsf "$HOME/.dotfiles/Xresources"         "$HOME/.Xresources"

mkdir -p "$HOME/.config/i3"
ln -nsf "$HOME/.dotfiles/i3/config"         "$HOME/.config/i3/config"

#mkdir -p "$HOME/.config/nvim"

ln -nsf "$HOME/.dotfiles/vim"           "$HOME/.vim"
ln -nsf "$HOME/.dotfiles/vim/vimrc"     "$HOME/.vimrc"
# ln -nsf "$HOME/.dotfiles/vim/init.vim"  "$HOME/.config/nvim/init.vim"
ln -nsf "$HOME/.dotfiles/emacs"           "$HOME/.emacs"
ln -nsf "$HOME/.dotfiles/diary"           "$HOME/diary"
ln -nsf "$HOME/.dotfiles/gtkrc-2.0"           "$HOME/.gtkrc-2.0"
ln -nsf "$HOME/.dotfiles/gtkrc-2.0.mine"           "$HOME/.gtkrc-2.0.mine"

mkdir -p "$HOME/.config/gtk-3.0"
ln -nsf "$HOME/.dotfiles/gtk-3.0/gtk.css"           "$HOME/.config/gtk-3.0/gtk.css"
ln -nsf "$HOME/.dotfiles/gtk-3.0/settings.ini"           "$HOME/.config/gtk-3.0/settings.ini"


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -nsf "$HOME/.dotfiles/knihovny/base16-shell"  "$HOME/.config/base16-shell"


mkdir -p "$HOME/.mail/"{gmail,icloud}/{inbox,drafts}

ln -nsf "$HOME/.dotfiles/mutt" "$HOME/.mutt"
ln -nsf "$HOME/.dotfiles/msmtprc"       "$HOME/.msmtprc"
ln -nsf "$HOME/.dotfiles/mbsyncrc"      "$HOME/.mbsyncrc"

