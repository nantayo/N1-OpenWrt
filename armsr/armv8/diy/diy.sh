#!/bin/bash

# Clone packages
git clone https://github.com/daeuniverse/openwrt-packages --single-branch --depth=1 clone/daepkg
git clone https://github.com/ophub/luci-app-amlogic --single-branch --depth=1 clone/amlogic
git clone https://github.com/Openwrt-Passwall/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman --single-branch --depth=1 feeds/luci/applications/luci-app-podman

# Adjust packages
rm -rf feeds/luci/applications/luci-app-dae feeds/luci/applications/luci-app-passwall feeds/packages/net/dae
cp -rf clone/amlogic/luci-app-amlogic clone/daepkg/luci-app-dae clone/passwall/luci-app-passwall feeds/luci/applications/
cp -rf clone/daepkg/luci-lib-daeuniverse feeds/luci/libs/
cp -rf clone/daepkg/dae clone/daepkg/vmlinux-btf-builtin feeds/packages/net/
DAE_VER=$(grep -m1 '^PKG_VERSION:=' feeds/packages/net/dae/Makefile | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
git clone --recurse-submodules -b "v${DAE_VER}" --depth=1 https://github.com/daeuniverse/dae feeds/packages/net/dae/src
sed -i 's|^PKG_BUILD_DIR:=|PKG_BUILD_DEPENDS:=golang1.27/host\nPKG_BUILD_DIR:=|' feeds/packages/net/dae/Makefile
awk '{ print } index($0, "$(LN) ../v2ray/geosite.dat") { print "\t$(INSTALL_DIR) $(1)/lib/upgrade/keep.d"; print "\techo /etc/dae > $(1)/lib/upgrade/keep.d/dae" }' feeds/packages/net/dae/Makefile > feeds/packages/net/dae/Makefile.new && mv feeds/packages/net/dae/Makefile.new feeds/packages/net/dae/Makefile
grep -q 'keep.d/dae' feeds/packages/net/dae/Makefile || { echo 'diy: failed to add keep.d install line to dae Makefile'; exit 1; }
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile
sed -i 's/--set=llvm.download-ci-llvm=true/--set=llvm.download-ci-llvm=false/' feeds/packages/lang/rust/Makefile

# Clean packages
rm -rf clone