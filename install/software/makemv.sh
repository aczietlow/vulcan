#!/usr/bin/env bash

makemkv_version=1.18.1

mkdir -p ~/Downloads/makemkv
cd ~/Downloads/makemkv

# set the header, to avoid http gzip, the already compressed tarball
wget --no-http-keep-alive --header="Accept-Encoding: identity" https://www.makemkv.com/download/makemkv-bin-${makemkv_version}.tar.gz
wget --no-http-keep-alive --header="Accept-Encoding: identity" https://www.makemkv.com/download/makemkv-oss-${makemkv_version}.tar.gz


tar -zxvf makemkv-oss-${makemkv_version}.tar.gz && rm makemkv-oss-${makemkv_version}.tar.gz
tar -zxvf makemkv-bin-${makemkv_version}.tar.gz && rm makemkv-bin-${makemkv_version}.tar.gz

sudo dnf install -y \
  zlib-devel openssl-devel \
  expat-devel ffmpeg ffmpeg-devel \
  qt5-qtbase-devel

# push the dir to the stack, so we can easily return from where we started.
pushd makemkv-oss-${makemkv_version}
./configure
# Run make job across all available CPU cores
make -j"$(nproc)"
sudo make install
popd

pushd makemkv-bin-${makemkv_version}
# Accept the EULA, without having to manually follow tty prompt
mkdir -p tmp
echo accepted > tmp/eula_accepted
make -j"$(nproc)"
sudo make install
popd

# TODO: figure out if I want to keep the src files for manual compliations like this, or delete the source files
