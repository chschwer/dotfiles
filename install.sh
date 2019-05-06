#!/bin/bash
# Assumption: Called from within dotfiles-directory

dotdir=$(pwd)

ln -sf $dotdir/gitconfig ~/.gitconfig
ln -sf $dotdir/vimrc ~/.vimrc
ln -sf $dotdir/editorconfig ~/.editorconfig
ln -sf $dotdir/eslintrc ~/.eslintrc
ln -sf $dotdir/bashrc ~/.bashrc

