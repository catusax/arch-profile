#!/bin/bash

wget -t 10 -O ~/.bingimg "http://cn.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1"

imgurl=`grep -o http.*jpg ~/.bingimg`
date=`grep -o -P "(?<=enddate\":\")\d{8}" ~/.bingimg`
mouth=`grep -o -P "(?<=enddate\":\")\d{6}" ~/.bingimg`
text=`grep -o -P "(?<=copyright\":\").*(?=\"\,\"copy)" ~/.bingimg`

if [ ! -d ~/图片/bingimg/${mouth}/ ];then

    mkdir -p ~/图片/bingimg/${mouth}
fi

if [ ! -f ~/图片/bingimg/${mouth}/${date}.jpg ];then

    wget -t 10 -O  ~/图片/bingimg/${mouth}/${date}.jpg "${imgurl}"
fi

gsettings set org.gnome.desktop.background picture-uri ~/图片/bingimg/${mouth}/${date}.jpg

echo $text
