#!/bin/bash
#
qemu-system-x86_64 \
-enable-kvm                                                    \
-m 8G                                                          \
-smp 10                                                        \
-hda UbuntuDisk.img                                       \
-boot d                                                        \
-device e1000,netdev=net0                             \
-netdev user,id=net0,hostfwd=tcp::5555-:22   \
-display none> log.txt 2>&1 &

echo Launched !


