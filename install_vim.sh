#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# get it
hg clone https://vim.googlecode.com/hg/ /tmp/vim-install

# build it
cd /tmp/vim-install/src
./configure --enable-pythoninterp --enable-rubyinterp --with-features=huge --prefix=$HOME/opt/vim
make && make install
mkdir -p $HOME/bin
cd $HOME/bin
ln -s $HOME/opt/vim/bin/vim
rm -rf /tmp/vim-install

# just to be sure
which vim
vim --version

mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/plasticboy/vim-markdown.git

ln -s $SCRIPT_DIR/.vimrc $HOME/.vimrc

