# fonts

[emoji(twemoji-color)](https://github.com/eosrei/twemoji-color-font#install-on-ubuntu-linux)
[code(hack)](https://github.com/source-foundry/Hack#quick-installation)

# zsh

```
sudo apt install zsh git
chsh -s /bin/zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp zsh/zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
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
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt install nodejs
sudo npm config set registry https://registry.npm.taobao.org
sudo npm install -g commitizen
sudo npm install -g cz-emoji
echo '{ "path": "cz-emoji" }' > ~/.czrc
```

# tldr

```
sudo npm install -g tldr
```

# go test

```
go get -u -v github.com/cweill/gotests/...
```
