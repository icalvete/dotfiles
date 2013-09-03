# dotfiles

My dotfiles

## Instalation

1. cd ~
2. git clone https://github.com/icalvete/dotfiles.git

## vim

### Configuration (The first time run):

1. git clone https://github.com/gmarik/vundle.git ~/dotfiles/vim/bundle/vundle
2. vim -u ~/dotfiles/bundles.vim +BundleInstall +q
3. cp -a ~/dotfiles/puppet.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/puppet.snippets
4. cp -a ~/dotfiles/sh.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/sh.snippets

### After configuration:

1. cd ~
2. rm .vim .vimrc
3. ln -s dotfiles/vim .vim
4. ln -s dotfiles/vimrc .vimrc
