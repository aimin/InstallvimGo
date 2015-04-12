#!/bin/sh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
s=`date '+%Y%m%d_%T'`
cp ~/.vimrc ~/.vimrc.$s.bak
cp ~/.vimrc ~/.vimrc.new
cat ./InstallVimGo.cfg ~/.vimrc > ~/.vimrc.new
rm ~/.vimrc
mv ~/.vimrc.new ~/.vimrc
echo 'done'
