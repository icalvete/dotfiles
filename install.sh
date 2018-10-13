#!/bin/bash

DATE=`date +"%Y%m%d%H%M%S"`

# BACKUP
if [ -d ~/.vim ] && [ ! -L ~/.vim ]; then
	echo "Doing backup of ~/.vim in ~/.vim.${DATE}."
	mv ~/.vim  ~/.vim_${DATE}
fi

if [ -f ~/.vimrc ] && [ ! -L ~/.vimrc ]; then
	echo "Doing backup of ~/.vimrc in ~/.vimrc.${DATE}."
	mv ~/.vimrc  ~/.vimrc_${DATE}
fi

if [ -f ~/.gitconfig ] && [ ! -L ~/.gitconfig ]; then
	echo "Doing backup of ~/.gitconfig in ~/.gitconfig.${DATE}."
	mv ~/.gitconfig  ~/.gitconfig_${DATE}
fi
if [ -f ~/.gemrc ] && [ ! -L ~/.gemrc ]; then
	echo "Doing backup of ~/.gitconfig in ~/.gitconfig.${DATE}."
	mv ~/.gemrc  ~/.gemrc_${DATE}
fi
echo
# END BACKUP

# LINKING
if [ ! -e ~/.vim ]; then
	ln -f -s dotfiles/vim ~/.vim
fi
ln -f -s dotfiles/vimrc ~/.vimrc
ln -f -s dotfiles/gitconfig ~/.gitconfig
ln -f -s dotfiles/gemrc ~/.gemrc
# END LINKING

echo "Instaling vundle..."
if [ -d ~/dotfiles/vim/bundle/vundle ]; then
	echo "Already instaled."
else
	git clone https://github.com/gmarik/vundle.git ~/dotfiles/vim/bundle/vundle
	echo "Instaled."
fi	
echo

echo "Instaling Plugins..."
echo 
echo "Write q! after Done!."
echo 
sleep 2
#mkdir -p ~/dotfiles/vim/bundle/vim-snippets/snippets/
#mkdir -p ~/dotfiles/vim/after/plugin/
vim  -u ~/dotfiles/bundles.vim +PluginInstall +q!
echo "Instaled."

echo "Instaling snippets and tools..."
cp -a ~/dotfiles/files/puppet.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/puppet.snippets
cp -a ~/dotfiles/files/sh.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/sh.snippets
cp -a ~/dotfiles/files/tabular.vim ~/dotfiles/vim/after/plugin/tabular.vim
cp -a ~/dotfiles/files/tComment.vim ~/dotfiles/vim/after/plugin/tComment.vim
echo "Instaled."
