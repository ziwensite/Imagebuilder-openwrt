#!/bin/bash

echo "Start Clash Core Download !"
echo "Current Path: $PWD"

#自动获取最新Openclash Core
mkdir -p files/etc/openclash/core
cd files/etc/openclash/core || (echo "Clash core path does not exist! " && exit)
wget https://raw.githubusercontent.com/vernesong/OpenClash/core/dev/dev/clash-linux-amd64-v3.tar.gz
tar -zxvf clash-linux-amd64.tar.gz
rm -rf clash-linux-amd64.tar.gz


#自动获取最新Openclash插件
cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-x86-64.Linux-x86_64/packages || exit
version=$(curl --silent "https://api.github.com/repos/vernesong/OpenClash/releases" | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/'  | head -n 1)
wget https://github.com/vernesong/OpenClash/releases/download/v$version/luci-app-openclash_"$version"_all.ipk