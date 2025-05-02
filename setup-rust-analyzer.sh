#!/bin/bash

mkdir -p rust-analyzer/bin
cd rust-analyzer/bin

# 環境にあわせて、ダウンロードする対象を変えること
curl -L -o rust-analyzer-1.77.gz https://github.com/rust-lang/rust-analyzer/releases/download/2024-03-11/rust-analyzer-aarch64-apple-darwin.gz

gunzip rust-analyzer-1.77.gz
chmod +x rust-analyzer-1.77