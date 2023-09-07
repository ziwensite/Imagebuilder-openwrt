#!/bin/bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-x86-64.Linux-x86_64 || exit

# Remove redundant default packages
sed -i "/luci-app-cpufreq/d" include/target.mk

# Force opkg to overwrite files
sed -i "s/install \$(BUILD_PACKAGES)/install \$(BUILD_PACKAGES) --force-overwrite/" Makefile

# Not generate ISO images for it is too big
sed -i "s/CONFIG_ISO_IMAGES=y/# CONFIG_ISO_IMAGES is not set/" .config

# Not generate VMDK images
sed -i "s/CONFIG_VMDK_IMAGES=y/# CONFIG_VHDX_IMAGES is not set/" .config

# 更改主机名
sed -i "s/hostname='ImmortalWrt'/hostname='YLOS'/g" ./package/base-files/files/bin/config_generate


