#!/bin/bash/

cd /wasabi
chmod +x build.sh
./build.sh

cd -

mkdir -p mnt/EFI/BOOT
cp /wasabi/target/x86_64-unknown-uefi/debug/wasabi.efi mnt/EFI/BOOT/BOOTX64.EFI

qemu-system-x86_64 -bios third_party/ovmf/RELEASEX64_OVMF.fd -drive format=raw,file=fat:rw:mnt
