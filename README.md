# dotfiles

My dotfiles

#Actions:

* vim config files with my tunning config
  + [powerline](https://github.com/Lokaltog/powerline)
  + many language syntax 
  + many language snippets
  + many extra power features like aling by =>, = ..., syntax checks...

* git
  + config and alias

## Instalation

1. cd ~
2. git clone https://github.com/icalvete/dotfiles.git

## vim

### Before configuration:

1. cd ~
2. rm .vim .vimrc (Maybe, you want do a copy instead)
3. ln -s dotfiles/vim .vim
4. ln -s dotfiles/vimrc .vimrc

### Configuration (The first time run):

1. git clone https://github.com/gmarik/vundle.git ~/dotfiles/vim/bundle/vundle
2. vim -u ~/dotfiles/bundles.vim +BundleInstall +q
3. cp -a ~/dotfiles/puppet.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/puppet.snippets
4. cp -a ~/dotfiles/sh.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/sh.snippets

## git

1. cd ~
2. ln -s dotfiles/gitconfig .gitconfig
