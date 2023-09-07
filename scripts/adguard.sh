#!/bin/bash

echo "Start Adguardhome Core Download !"
echo "Current Path: $PWD"


#获取Adguardhome最新版本core
mkdir -p files/usr/bin
cd files/usr/bin || (echo "adguardhome core path does not exist! " && exit)
version=$(curl --silent "https://api.github.com/repos/AdguardTeam/AdGuardHome/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
wget https://github.com/AdguardTeam/AdGuardHome/releases/download/"$version"/AdGuardHome_linux_amd64.tar.gz
tar -zxvf AdGuardHome_linux_amd64.tar.gz
rm -rf AdGuardHome_linux_amd64.tar.gz


#获取Adguardhome最新版本插件
cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-x86-64.Linux-x86_64/packages || exit
ipk=$(curl --silent "https://api.github.com/repos/kongfl888/luci-app-adguardhome/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/')
wget https://github.com/kongfl888/luci-app-adguardhome/releases/download/v"$ipk"/luci-app-adguardhome_"$ipk"_all.ipk