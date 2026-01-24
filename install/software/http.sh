#!/usr/bin/env bash

# Testing and working with http

INSOMNIA_VERSION=12.3.0
TMP_DIR="$(mktemp -d)"



pushd "$TMP_DIR"
# set the header, to avoid http gzip, the already compressed tarball
wget --no-http-keep-alive --header="Accept-Encoding: identity" https://github.com/Kong/insomnia/releases/download/core%40${INSOMNIA_VERSION}/Insomnia.Core-${INSOMNIA_VERSION}.tar.gz
tar -zxvf Insomnia.Core-${INSOMNIA_VERSION}.tar.gz && rm Insomnia.Core-${INSOMNIA_VERSION}.tar.gz
sudo mv Insomnia.Core-${INSOMNIA_VERSION}/ /opt/insomnia
sudo ln -sf /opt/insomnia/insomnia /usr/local/bin/insomnia 
popd

sudo tee /usr/share/applications/insomnia.desktop > /dev/null <<EOF
[Desktop Entry]
Name=Insomnia
Comment=HTTP Client
Exec=/opt/insomnia/insomnia
Icon=/opt/insomnia/resources/app.asar.unpacked/src/static/insomnia-logo.png
Terminal=false
Type=Application
Categories=Development;Network;
EOF

sudo update-desktop-database || true
