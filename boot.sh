#!/bin/sh
# 独立式 InitRamfs

# sudo debootstrap --arch=amd64 stretch . http://mirrors.aliyun.com/debian/

# gcc -static -o main main.c
# echo main | cpio -o --format=newc > rootfs
# find . | cpio -H newc -o > rootfs

# gzip rootfs



rm rootfs.gz

cd rootfs
sudo find . | sudo cpio -o --format=newc | gzip -9 > ../rootfs.gz
cd ..

qemu-system-x86_64 \
    -m 1G \
    -kernel linux-*/arch/x86_64/boot/bzImage \
    -initrd rootfs.gz \
    -append "root=/dev/ram rdinit=/init"
    # -append "root=/dev/ram console=ttyS0 rdinit=/init" \
    # -nographic
#  -serial tcp::4321,server

