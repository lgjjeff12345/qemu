#! /bin/bash

sudo qemu-system-aarch64 \
     -M  virt \
     -cpu cortex-a53 \
     -smp 2 \
     -m 512M \
     -kernel /home/lgj/work/linux/arch/arm64/boot/Image \
     -drive file=/home/lgj/work/buildroot/output/images/rootfs.ext4,if=virtio,format=raw -append root=/dev/vda \
     -nographic
     #-append "root=/home/lgj/work/buildroot/output/images/rootfs.ext4 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc ignore_loglevel" \
     #-device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare
