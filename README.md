

+ 登录地址 op/ 或 10.0.0.1 (若后台无法打开，请尝试插拔交换wan、lan网线顺序。)

+ 默认用户 root

+ 默认密码 root

**快捷访问**
部分服务需要先自行在软件包中安装并启用，可自行在 /etc/nginx/conf.d/shortcuts.conf 中调整和添加更多快捷访问。

+ op/ 可打开 OpenWRT后台 即 lan ip

+ ql/ 可打开 青龙后台 即 lan ip:5700

+ adg/ 可打开 AdGuardHome管理后台 即 lan ip:3000

+ pve/ 可打开 Proxmox VE虚拟机管理 默认为 10.0.0.10:8006

+ by/ 可打开 Bypass插件页面 即 ip/luci/admin/services/bypass

+ pk/ 可打开 Packages插件管理页面 即 ip/luci/admin/system/opkg

+ ag/ 可打开 Aria2 Web面板 即 ip/ariang

+ ug/ 可打开 固件在线更新页面 即 ip/luci/admin/services/gpsysupgrade

 **注意事项**

+ 第一次使用请采用全新安装,避免出现升级失败以及其他一些可能的Bug.

+ 云编译需要 [在此](https://github.com/settings/tokens) 创建个token,然后在此仓库Settings->Secrets中添加个名字为REPO_TOKEN的Secret,填入token值,否者无法触发编译。

+ 在仓库Settings->Secrets中分别添加 PPPOE_USERNAME, PPPOE_PASSWD 可设置默认拨号账号密码.有 [安全隐患](https://github.com/kiddin9/OpenWrt_x86-r2s-r4s/issues/23)。

+ 在仓库Settings->Secrets中添加 SCKEY 可通过[Server酱](http://sc.ftqq.com) 推送编译结果到微信。

+ 在仓库Settings->Secrets中添加 TELEGRAM_CHAT_ID, TELEGRAM_TOKEN 可推送编译结果到Telegram Bot. [教程](https://longnight.github.io/2018/12/12/Telegram-Bot-notifications)

+ DIY云编译教程参考: [Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)


+ 默认插件包含: Opkg 软件包管理、Bypass 智能过墙、Samba4 文件共享(x86)、UPNP 自动端口转发、Turbo ACC 网络加速。
其他插件请自行在 后台->软件包 中安装,系统升级不会丢失插件.每次系统升级完成连接网络后,会自动安装所有已自选安装的插件。

## 5. **系统截图展示**
![](https://github.com/kiddin9/luci-theme-edge/raw/master/Screenshots/1.png)
![](https://github.com/kiddin9/luci-theme-edge/raw/master/Screenshots/3.png)
![](https://github.com/kiddin9/luci-theme-edge/raw/master/Screenshots/8.png)


------
For English

Build OpenWrt using GitHub Actions

## Usage

- Sign up for [GitHub Actions](https://github.com/features/actions/signup)
- Fork [this GitHub repository](https://github.com/kiddin9/OpenWrt)
- click the `Star` button, and the build will starts automatically.Progress can be viewed on the Actions page.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.


## Acknowledgments

#### Rockchip的Kernel等部分源码来源 https://github.com/coolsnowwolf/lede
#### ipq807x的Kernel等部分源码来源 https://github.com/Boos4721/openwrt
#### ipq60xx的Kernel等部分源码来源 https://github.com/coolsnowwolf/openwrt-gl-ax1800

- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
- [aparcar](https://github.com/openwrt/asu)
- [unifreq](https://github.com/unifreq/openwrt_packit)
- [Boos4721](https://github.com/Boos4721/openwrt)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)


