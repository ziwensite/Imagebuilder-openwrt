#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"

# 常用系统管理组件

# Diskman 磁盘管理
PACKAGES="$PACKAGES luci-i18n-diskman-zh-cn"
# CPU 占用限制
PACKAGES="$PACKAGES luci-i18n-cpulimit-zh-cn"
# collectd 统计
PACKAGES="$PACKAGES luci-i18n-statistics-zh-cn"
# ttyd 终端
PACKAGES="$PACKAGES luci-i18n-ttyd-zh-cn"
# 虚拟机插件
#PACKAGES="$PACKAGES qemu-ga"

# 商店
PACKAGES="$PACKAGES taskd luci-lib-xterm luci-lib-taskd luci-app-store"

# 常用软件服务

# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"
# ssrplus 代理
PACKAGES="$PACKAGES luci-i18n-ssr-plus-zh-cn"
# Passwall 代理
#PACKAGES="$PACKAGES luci-i18n-passwall-zh-cn"
# frp 和 nps 内网穿透
#PACKAGES="$PACKAGES luci-i18n-nps-zh-cn luci-i18n-frpc-zh-cn"
# Kms 服务
#PACKAGES="$PACKAGES luci-app-vlmcsd"
# udp2raw隧道
#PACKAGES="$PACKAGES luci-i18n-udp2raw-zh-cn"
# 解锁网易云音乐
#PACKAGES="$PACKAGES luci-app-unblockneteasemusic"
# AdguardHome DNS
PACKAGES="$PACKAGES luci-app-adguardhome"
# 广告屏蔽大师
PACKAGES="$PACKAGES luci-i18n-adbyby-plus-zh-cn	"

# 常用的网络存储组件

# 文件助手
PACKAGES="$PACKAGES luci-app-fileassistant"
PACKAGES="$PACKAGES luci-i18n-cifs-mount-zh-cn"

# 硬盘休眠
#PACKAGES="$PACKAGES luci-i18n-hd-idle-zh-cn"


# 网络组件

# EQoS 网速控制
PACKAGES="$PACKAGES luci-i18n-eqos-zh-cn"
# Wireguard
#PACKAGES="$PACKAGES luci-i18n-wireguard-zh-cn"
# 宽带监控 Nlbwmon
PACKAGES="$PACKAGES luci-i18n-nlbwmon-zh-cn"
# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn luci-i18n-filetransfer-zh-cn"

# Packages 文件夹下的 ipk 包
PACKAGES="$PACKAGES luci-i18n-wrtbwmon-zh-cn"


# 一些其他可能有用的包

# zsh 终端
#PACKAGES="$PACKAGES zsh"
# Vim 完整版，带语法高亮
PACKAGES="$PACKAGES vim-fuller"
# X/Y/ZMODEM 文件传输
PACKAGES="$PACKAGES lrzsz"
# OpenSSH
PACKAGES="$PACKAGES openssh-server openssh-client"
# Netdata 系统监控界面
PACKAGES="$PACKAGES netdata"
# 显示二维码
PACKAGES="$PACKAGES qrencode"
# 支持sftp文件传输
PACKAGES="$PACKAGES openssh-sftp-server"

# 一些自定义文件
FILES="files"

# 禁用服务
DISABLED_SERVICES="sshd dockerd kmodac97 kmodsoundhdacore kmodsoundhdacodecrealtek kmodsoundhdacodecvia kmodsoundvia82xx kmodsoundhdaintel kmodsoundhdacodechdmi kmodsoundi8x0 kmodusbaudio kmodusbnet kmodusbnetasix kmodusbnetasixax88179 kmodusbnetrtl8150 kmodusbnetrtl8152vendor kmodusbhid"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
