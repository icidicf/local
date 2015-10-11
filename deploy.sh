#!/bin/bash

if [ ! -d ./backup ]
then 
    mkdir backup
fi

if [ ! -f ../.vimrc ]
then 
    touch ../.vimrc
fi

backupDir=./backup/

now=$(date "+%Hh-%Mm-%Ss-%B-%d")
echo $now


bashDestFile=/home/lyp/.bashrc
bashBakFile=$backupDir"bashrc_bak_"$now".sh"
echo "back up ./bashrc to $bashBakFile "
cp $bashDestFile $bashBakFile



vimDestFile=/home/lyp/.vimrc
vimBakFile=$backupDir"vimrc_bak_"$now".vim"
echo "back up ./bashvim to $vimBakFile "
cp $vimDestFile $vimBakFile -p


echo "source /home/lyp/local/bash/alias.sh" >> $bashDestFile
echo "source /home/lyp/local/bash/export.sh"  >> $bashDestFile
echo "source /home/lyp/local/bash/function.sh" >> $bashDestFile


echo "source /home/lyp/local/vim/vimPlugingManager.vim" >> $vimDestFile
echo "source /home/lyp/local/vim/basic.vim"   >> $vimDestFile


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


git config --global user.email "icidicf@gmail.com"
git config --global user.name "icidicf"
git config --global push.default simple
