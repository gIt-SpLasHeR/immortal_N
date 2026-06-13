#!/bin/bash

# Remove packages
#rm -rf feeds/packages/net/v2ray-geodata


# Add packages
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic

# 加入OpenClash核心
#chmod -R a+x $GITHUB_WORKSPACE/preset-clash-core.sh
#$GITHUB_WORKSPACE/N1/preset-clash-core.sh

echo "
# 插件
CONFIG_PACKAGE_luci-app-amlogic=y
" >> .config

# 修改默认IP
sed -i 's/192.168.1.1/192.168.111.254/g' package/base-files/files/bin/config_generate

# 修改主机名
sed -i 's/ImmortalWrt/wormhole/g' package/base-files/files/bin/config_generate

