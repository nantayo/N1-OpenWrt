#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.2/g' package/base-files/files/bin/config_generate

# Add packages
svn co https://github.com/kiddin9/luci-app-dnsfilter/trunk package/luci-app-dnsfilter
svn co https://github.com/nantayo/passwall/trunk package/luci-app-passwall
svn co https://github.com/ophub/luci-app-amlogic/trunk package/luci-app-amlogic