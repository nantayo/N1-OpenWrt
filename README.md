# 2023 年 6 月告知
作者已于本月硕士毕业，脱离了垃圾校园网环境，N1 也随之退役。未来本项目仍会利用 GitHub Actions 自动更新，但不会再积极增删功能或调试配置，望各位周知。有疑问仍可到[讨论区](https://github.com/nantayo/N1-OpenWrt/discussions)提问，作者有空也会予以解答。
***
# 项目简介
本固件适配斐讯 N1 旁路由模式，追求轻量，包含默认皮肤、IPv6 支持，以及下列 luci-app：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)：系统更新、文件传输、CPU 调频等<br>
luci-app-dockerman：docker 管理<br>
[luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns)：DNS 处理器。可去广告、缓存 DNS、防泄漏等<br>
[luci-app-passwall](https://github.com/nantayo/passwall)：科学上网<br>
luci-app-samba4：存储共享<br>
其中 mosdns、dnsmasq、passwall 已调试好，开机可用。
***
# 致谢
本项目基于天灵的 [OpenWrt-21.02](https://github.com/immortalwrt/immortalwrt/tree/openwrt-21.02) 源码编译，使用 flippy 的[脚本](https://github.com/unifreq/openwrt_packit)和 breakings 维护的[内核](https://github.com/breakings/OpenWrt/releases/tag/kernel_stable)打包成完整固件，感谢开发者们的无私分享。<br>
flippy 固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)
