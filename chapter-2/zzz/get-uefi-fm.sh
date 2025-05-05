#!/bin/bash/

mkdir -p third_party/ovmf
cd third_party/ovmf
wget https://github.com/hikalium/wasabi/raw/main/third_party/ovmf/RELEASEX64_OVMF.fd
cd -
