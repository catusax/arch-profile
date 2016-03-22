#!/bin/bash

while true
do
date=`date +%Y%m%d`
mouth=`date +%Y%m`
if [ ! -d ~/图片/bingimg/${mouth}/ ];then

    mkdir -p ~/图片/bingimg/${mouth}
fi

if [ ! -f ~/图片/bingimg/${mouth}/${date}***.jpg ];then
    wget -t 10 -O ~/.bingimg "http://cn.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1"
    imgurl=`grep -o http.*jpg ~/.bingimg`
    text1=`grep -o -P "(?<=copyright\":\").*(?=\ \(©)" ~/.bingimg`
    text=`echo $text1 | sed s/[[:space:]]//g`
    wget -t 10 -O  ~/图片/bingimg/${mouth}/${date}-${text}.jpg "${imgurl}"

    gsettings set org.gnome.desktop.background picture-uri ~/图片/bingimg/${mouth}/${date}-${text}.jpg

fi
echo $text
echo $text1
sleep 20 
done
