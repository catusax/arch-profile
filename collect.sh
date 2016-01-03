#!/bin/bash
######################################################
#bash配置
mkdir -p ${PWD}/bash/
cp ~/.bashrc ${PWD}/bash/
#vim配置
mkdir -p ${PWD}/vim/
cp /etc/vimrc ${PWD}/vim/ #全局配置
cp ~/.vimrc ${PWD}/vim/ #用户配置
#pacman配置
mkdir -p ${PWD}/pacman/
cp /etc/pacman.d/mirrorlist ${PWD}/pacman/ #镜像列表
cp /etc/pacman.conf ${PWD}/pacman/ #仓库列表
#xorg配置
mkdir -p ${PWD}/xorg/
cp /etc/X11/xinit/xinitrc ${PWD}/xorg/
cp ~/.xinitrc ${PWD}/xorg/
