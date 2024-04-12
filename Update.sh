#!/bin/bash
cp ./config/fancymenu/assets/Update/Update.ps1 ./Update.ps1
echo "MineOptimiz Updater现在已用PowerShell重写"
echo "1.使用本地安装的PowerShell启动MineOptimiz Updater"
echo "2.使用便携版PowerShell启动MineOptimiz Updater"
echo "3.下载便携版PowerShell"
echo "4.删除便携版PowerShell"
echo "5.退出"
read -p "请选择：" launchupdater
if [ "$launchupdater" = "1" ]; then
    pwsh ./Update.ps1
    rm ./Update.ps1
elif [ "$launchupdater" = "2" ]; then
    ./PowerShell.AppImage ./Update.ps1
    rm ./Update.ps1
elif [ "$launchupdater" = "3" ]; then
    wget https://gh.ddlc.top/https://github.com/ivan-hc/PowerShell-appimage/releases/download/continuous/PowerShell-v7.4.1-x86_64.AppImage -O ./PowerShell.AppImage
    rm ./Update.ps1
    bash ./Update.sh
elif [ "$launchupdater" = "4" ]; then
    rm ./PowerShell.AppImage
    rm ./Update.ps1
    bash Update.sh
elif [ "$launchupdater" = "5" ]; then
    rm ./Update.ps1
    exit
fi
