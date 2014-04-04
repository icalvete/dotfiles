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

```bash
ubuntu@yoda:~$ cd ~
ubuntu@yoda:~$ git clone https://github.com/icalvete/dotfiles.git
```

## vim

### Before configuration:

```bash
ubuntu@yoda:~$ cd ~
ubuntu@yoda:~$ rm .vim .vimrc (Maybe, you want do a copy instead)
ubuntu@yoda:~$ ln -s dotfiles/vim .vim
ubuntu@yoda:~$ ln -s dotfiles/vimrc .vimrc
```

### Configuration (The first time run):

```bash
ubuntu@yoda:~$ git clone https://github.com/gmarik/vundle.git ~/dotfiles/vim/bundle/vundle
ubuntu@yoda:~$ vim -u ~/dotfiles/bundles.vim +BundleInstall +q (¡¡¡ ignore errors !!!)
ubuntu@yoda:~$ cp -a ~/dotfiles/puppet.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/puppet.snippets
ubuntu@yoda:~$ cp -a ~/dotfiles/sh.snippets ~/dotfiles/vim/bundle/vim-snippets/snippets/sh.snippets
```

## git

```bash
ubuntu@yoda:~$ cd ~
ubuntu@yoda:~$ ln -s dotfiles/gitconfig .gitconfig
```
