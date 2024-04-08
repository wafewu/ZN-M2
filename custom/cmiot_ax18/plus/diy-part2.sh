#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# 修改 argon 为默认主题,不再集成luci-theme-bootstrap主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify version
sed -i 's/R23.11.20/R23.11.20/g' package/addition/default-settings/files/99-default-settings

# Modify default timezone & ntp server
sed -i 's/UTC/Asia\/Shanghai/g' package/base-files/files/bin/config_generate
sed -i 's/0.openwrt.pool.ntp.org/0.ntp.aliyun.com/g' package/base-files/files/bin/config_generate

