#!/bin/bash

git_root=`git rev-parse --show-toplevel`


open ./nrf-sdk
echo "Download the latest nRF5 SDK, along your preferred softdevices and tools"
open -a Safari "https://www.nordicsemi.com/Products/Development-software/nRF5-SDK/Download#infotabs"
echo "Once downloaded, extract the SDK to the nrf-sdk folder"
echo ""

# wait for the user to press a key
read -n 1 -s -r -p "Press any key to continue"

# Clone and install micro-ecc
git clone --depth 1 https://github.com/kmackay/micro-ecc.git nrf-sdk/external/micro-ecc/micro-ecc
# replace "/usr/local/gcc-arm-none-eabi-9-2020-q2-update/bin/" with "/usr/local/bin" in "nrf-sdk/components/toolchain/gcc/Makefile.posix"
sed -i '' 's/\/usr\/local\/gcc-arm-none-eabi-9-2020-q2-update\/bin\//\/usr\/local\/bin\//g' nrf-sdk/components/toolchain/gcc/Makefile.posix
(cd nrf-sdk/external/micro-ecc/nrf52hf_armgcc/armgcc; make;)


