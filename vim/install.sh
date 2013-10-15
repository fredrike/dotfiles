#!/usr/bin/env bash

echo "Configuring vim, please answer the questions below:"
echo "Which version do you like, [l]ite, [m]edium or [h]eavy?"

read -n 1 action

mkdirs

case "$action" in
  h )
    bash <(curl https://j.mp/spf13-vim3 -L)
    ;;
  m )
    echo "let g:spf13_bundle_groups=['general']" >> ~/.vimrc.bundles.local
    bash <(curl https://j.mp/spf13-vim3 -L)
   ;;
  l )
    lite
   ;;
esac

mkdirs () {
  mkdir -p ~/.vim/vimviews ~/.vim/vimundo ~/.vim/vimswap ~/.vim/vimbackup
}

lite () {
  ln -fs $DIR/vimrc.lite ~/.vimrc
}

