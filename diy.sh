#!/bin/bash

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/xiaorouji/openwrt-passwall --depth=1 clone/passwall
git clone https://https://github.com/vernesong/OpenClash/ --depth=1 clone/OpenClash

# Update packages
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-openclash
cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall clone/openclash/luci-app-openclash feeds/luci/applications/

# Clean packages
rm -rf clone
