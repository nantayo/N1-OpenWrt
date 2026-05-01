# 项目简介
本固件适配斐讯 N1 旁路由模式，追求轻量，不具备 PPPoE、WiFi 相关功能。<br>
固件仅包含默认皮肤以及下列 luci-app：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)：系统更新、文件传输、CPU 调频等<br>
[luci-app-daed](https://github.com/QiuSimons/luci-app-daed)：基于eBPF分流的代理工具。内存占用稍大、上手门槛较高，换来的是直连流量处理性能大幅强于传统的各类用户态代理工具(OpenClash、SSRplus、Passwall等)。<br>
[luci-app-passwall](https://github.com/Openwrt-Passwall/openwrt-passwall)：传统代理工具。内存占用稍低、简单易用。<br>
[luci-app-podman](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman)：容器管理<br>
luci-app-samba4：存储共享
***
# 致谢
本项目基于 [ImmortalWrt-25.12](https://github.com/immortalwrt/immortalwrt/tree/openwrt-25.12) 源码编译，使用 ophub 的[脚本](https://github.com/ophub/amlogic-s9xxx-openwrt)和[内核](https://github.com/ophub/kernel/releases/tag/kernel_flippy)打包成完整固件，感谢开发者们的无私分享。<br>
flippy 固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)。