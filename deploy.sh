#!/bin/bash

if [ ! -d ./backup ]
then 
    mkdir backup
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
