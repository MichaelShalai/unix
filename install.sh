#!/bin/bash

DIR=$(grealpath $(dirname "$0"))

if [ ! -L ~/.bash_profile ]; then
  ln -s $DIR/.bash_profile ~/.bash_profile
fi

echo "Add .git-alias to ~/.gitconfig with the following configuration:"
echo " "
echo "  [include]"
echo "    path = $DIR/.git-alias"
echo " "

echo "Symlink to .bash_profile has been created. Execute 'source ~/.bash_profile' or reopen your shell to complete installation."
