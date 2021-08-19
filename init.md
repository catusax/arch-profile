# fonts

[emoji(twemoji-color)](https://github.com/eosrei/twemoji-color-font#install-on-ubuntu-linux)
[code(hack)](https://github.com/source-foundry/Hack#quick-installation)

# zsh

```
sudo apt install zsh git
chsh -s /bin/zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp zsh/zshrc ~/.zshrc
# ln zsh/zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
```

# nodejs

```
curl -L https://cdn.jsdelivr.net/gh/tj/n@master/bin/n -o n
bash n lts
```

# git cz

```
sudo npm config set registry https://registry.npm.taobao.org
sudo npm install -g commitizen conventional-changelog-cli conventional-changelog-cz-emoji cz-emoji
echo '{ "path": "cz-emoji" }' > ~/.czrc
conventional-changelog -i CHANGELOG.md -s -n node_modules/conventional-changelog-cz-emoji
```

# tldr

```
sudo npm install -g tldr
```
