自动获取每天的必应美图并且设为gnome的壁纸

    chmod +x *.sh
    ./install.sh

如果你是使用startx方式启动桌面，你可以把 `(bingimg &)` 放到 `.xinitrc` 文件第一行以使程序自启动。使用gdm启动的可以用`gnome-session-properties`自动启动脚本。
