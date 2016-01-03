#bash
cp ${PWD}/bash/.bashrc ~/.bashrc
#vim
cp ${PWD}/vim/.vimrc ~/
sudo cp ${PWD}/vim/vimrc /etc/vimrc
#pacman
sudo cp ${PWD}/pacman/mirrorlist /etc/pacman.d/mirrorlist
sudo cp ${PWD}/pacman/pacman.conf /etc/pacman.conf
#xorg
cp ${PWD}/xorg/.xinitrc ~/.xinitrc
sudo cp ${PWD}/xorg/xinitrc /etc/X11/xinit/xinitrc
