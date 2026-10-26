#!/bin/bash

# Clone packages
git clone https://github.com/daeuniverse/openwrt-packages --single-branch --depth=1 clone/daepkg
git clone https://github.com/ophub/luci-app-amlogic --single-branch --depth=1 clone/amlogic
git clone https://github.com/Openwrt-Passwall/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman --single-branch --depth=1 feeds/luci/applications/luci-app-podman

# Adjust packages
rm -rf feeds/luci/applications/luci-app-daed feeds/luci/applications/luci-app-passwall feeds/packages/net/dae
cp -rf clone/amlogic/luci-app-amlogic clone/daepkg/luci-app-dae clone/passwall/luci-app-passwall feeds/luci/applications/
cp -rf clone/daepkg/luci-lib-daeuniverse feeds/luci/libs/
cp -rf clone/daepkg/dae clone/daepkg/vmlinux-btf-builtin feeds/packages/net/
DAE_VER=$(grep -m1 '^PKG_VERSION:=' feeds/packages/net/dae/Makefile | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
git clone --recurse-submodules -b "v${DAE_VER}" --depth=1 https://github.com/daeuniverse/dae feeds/packages/net/dae/src
sed -i 's|^PKG_BUILD_DIR:=|PKG_BUILD_DEPENDS:=golang/host\nPKG_BUILD_DIR:=|' feeds/packages/net/dae/Makefile
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile

# Clean packages
rm -rf clone