#!/bin/bash

# Adjust source code
patch -p1 -f < $(dirname "$0")/luci.patch

# Clone packages
git clone https://github.com/nantayo/My-Pkg clone/my-pkg
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/Openwrt-Passwall/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman --depth=1 feeds/luci/applications/luci-app-podman

# Adjust packages
rm -rf feeds/luci/applications/luci-app-passwall
cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall feeds/luci/applications/
cp -rf clone/my-pkg/haproxy feeds/packages/net/
cp -rf clone/my-pkg/podman feeds/packages/utils/
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile

# Clean packages
rm -rf clone