#!/bin/bash/

cd /wasabi/
cargo build --target x86_64-unknown-uefi

cd -

cp /wasabi/target/x86_64-unknown-uefi/debug/wasabi.efi mnt/EFI/BOOT/BOOTX64.EFI
qemu-system-x86_64 -bios third_party/ovmf/RELEASEX64_OVMF.fd -drive format=raw,file=fat:rw:mnt

