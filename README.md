在使用本项目提供的固件之前，最好翻阅一下[讨论区](https://github.com/nantayo/N1-OpenWrt/discussions)，了解可能存在的一些问题和解决方案。本人作为玩家而非开发者，无法修复上游源码的BUG，因此本项目不开放issue，只开放discussion。  

另外，本项目旨在满足本人对OpenWrt的定制需求，因此概不承接他人的增删改要求。若想定制编译出自己的固件，请fork本项目后编辑文件。
***
本项目通常每周六凌晨自动更新一次，随功能改动和BUG修复可能加更或回退。  

当前专为N1网关服务器（旁路由）模式适配，已经添加必需的防火墙规则，完整功能请参考：![固件预览](https://raw.githubusercontent.com/nantayo/N1-OpenWrt/master/pictures/preview.jpg)
***
本项目基于Lean的[OpenWrt源码](https://github.com/coolsnowwolf/lede)，使用flippy原版[打包脚本](https://github.com/unifreq/openwrt_packit)，打包制作filppy[为arm盒子适配](https://github.com/unifreq?tab=repositories&q=Linux&type=&language=&sort=)的OpenWrt固件。  
更多细节请参考[flippy恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)  
衷心感谢开发者们付出的努力。