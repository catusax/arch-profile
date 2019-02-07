# zsh

```
sudo apt install zsh git
chsh -s /bin/zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp zsh/zshrc ~/.zshrc
```

# vim
rm ~/.vim ~/.vimrc -rf
git clone https://github.com/bramblex/BlxVimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
:BundleInstall
vim ~/.vim/rc/themes.vimrc
第 84 行:
E254: 无法分配颜色 235
hi Visual cterm=inverse ctermbg=235 gui=inverse guibg=#262626

# git cz

```
sudo apt install npm
sudo npm config set registry https://registry.npm.taobao.org
sudo npm install -g commitizen
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

# go test

```
go get -u -v github.com/cweill/gotests/...
```