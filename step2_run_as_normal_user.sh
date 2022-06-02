#!/bin/bash
#Run this script as your normal user


# Installing VIM Pathogen
 mkdir -p ~/.vim/autoload ~/.vim/bundle && \
 curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Installing vim ale and vim puppet

 cd ~/.vim/bundle && \
 git clone https://github.com/w0rp/ale.git && git clone https://github.com/rodjek/vim-puppet.git

# Placing my .vimrc file
 git clone https://github.com/dylandenney/vimrc.git && /bin/cp -f vimrc/vimrc ~/.vimrc && \
 rm -fr vimrc
