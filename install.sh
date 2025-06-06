#!/bin/bash

sudo chsh "$(id -un)" --shell "/bin/bash"

git clone https://github.com/domagojlatecki/bash-aliases.git
git clone https://github.com/domagojlatecki/posh-git-sh.git

current_dir="$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

ln -sf $current_dir/bash_aliases $HOME/bash_aliases
ln -sf $current_dir/posh-git-sh $HOME/posh-git-sh
ln -sf $current_dir/.bash_aliases $HOME/.bash_aliases
ln -sf $current_dir/.bashrc $HOME/.bashrc
ln -sf $current_dir/.gitconfig $HOME/.gitconfig
ln -sf $current_dir/.profile $HOME/.profile
ln -sf $current_dir/.vimrc $HOME/.vimrc
