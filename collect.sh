#!/bin/bash
######################################################
#bash配置
mkdir -p ${PWD}/bash/ && cp ~/.bashrc ${PWD}/bash/
#vim配置
mkdir -p ${PWD}/vim/ && cp /etc/vimrc ${PWD}/vim/
#pacman配置
mkdir -p ${PWD}/pacman/ && cp /etc/pacman.d/mirrorlist ${PWD}/pacman/
cp /etc/pacman.conf ${PWD}/pacman/
