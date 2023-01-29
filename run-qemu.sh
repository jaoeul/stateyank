#!/bin/bash

qemu-system-mipsel \
    -kernel $HOME/repo/buildroot/output/images/vmlinux \
    -hda $HOME/repo/buildroot/output/images/rootfs.ext2 \
    -append "root=/dev/sda" \
    -m 1024 \
    -cpu 34Kf \
    -smp 2 \
    -nographic
