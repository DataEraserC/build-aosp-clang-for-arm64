#!/usr/bin/env bash
./build-llvm.py --vendor-string Pdx \
--targets ARM AArch64 \
--projects clang lld \
--build-stage1-only \
--no-update \
-i /root/Toolchain/pdx-clang16


./build-binutils.py --targets arm-linux-gnueabi aarch64-linux-gnu \
-i /root/Toolchain/pdx-clang16
