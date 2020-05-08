Linux 最小开发环境
========

如何使用

* 下载 Linux 内核源码并解压到 linux-x.y.z 目录，然后进行内核编译
* 下载 alpine-rootfs 作为 rootfs 解压到 rootfs 下
* 通过 ./boot.sh 启动 qemu 进行开发调试