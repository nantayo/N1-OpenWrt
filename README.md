# 为什么本项目存在？
2022年初，各科学上网插件响应V2ray技术更新移除alterID参数，致使未升级的机场无法继续使用。无奈之下，作者维护了一份[passwall](https://github.com/nantayo/passwall)代码，以继续使用老机场。也因此，作者最终走上了自己编译OpenWrt的道路。
***
# 用前须知
1.插件本身出现BUG请读者自行移步上游仓库反馈，关于设置的问题可到[讨论区](https://github.com/nantayo/N1-OpenWrt/discussions)提问，作者看到后会尽量帮忙解答。<br>
2.本项目旨在满足作者对OpenWrt的要求，如需定制自己的固件，请fork后自行修改。
***
# 项目简介
本项目每月1、16日更新，适配设备为斐讯N1，完备支持IPv6。<br>
特别注意：本固件按照N1做旁路由的网络结构设计，已添加防火墙规则并关闭DHCP服务，如需更改网段请用静态IP登录后台。<br>
本固件追求简单、轻量，只包含默认的Boorstrap皮肤，以及下列额外插件：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)：更新、备份、文件传输、CPU调频等<br>
luci-app-dockerman：docker管理<br>
[luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns)：高性能DNS处理器，可国内外分流、去广告、DNS缓存等<br>
[luci-app-passwall](https://github.com/nantayo/passwall)：科学上网<br>
luci-app-samba4：存储共享<br>
其中mosdns、dnsmasq、passwall的配置已调整好并编译进固件中，开箱可用。
***
# 致谢
本项目基于天灵的[OpenWrt-21.02](https://github.com/immortalwrt/immortalwrt/tree/openwrt-21.02)源码编译，使用flippy的[脚本](https://github.com/unifreq/openwrt_packit)和breakings维护的[内核](https://github.com/breakings/OpenWrt/releases/tag/kernel_stable)打包为完整OpenWrt固件，感谢开发者们的无私分享。<br>
flippy固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)
