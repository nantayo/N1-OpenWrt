#!/bin/bash


## 解除系统限制
# ulimit -u 10000
# ulimit -n 4096
# ulimit -d unlimited
# ulimit -m unlimited
# ulimit -s unlimited
# ulimit -t unlimited
# ulimit -v unlimited


# Default IP
sed -i 's/192.168.1.1/192.168.0.3/g' package/base-files/files/bin/config_generate



# Firewall
echo "iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE" >> package/network/config/firewall/files/firewall.user

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall feeds/packages/net/haproxy feeds/packages/net/v2ray-geodata

# Add packages
#svn co https://github.com/nantayo/my-pkg/trunk package/my-pkg
svn co https://github.com/ophub/luci-app-amlogic/trunk package/amlogic
git clone https://github.com/kenzok8/small-package package/small-package





