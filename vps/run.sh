#!/bin/bash
apt install language-pack-zh-hans git
locale-gen
git config --global user.name "coolrc136"
git config --global user.email "qq1782536964@live.com"
git config --global core.quotepath false
git config --global push.default simple
ssh-keygen -t rsa
