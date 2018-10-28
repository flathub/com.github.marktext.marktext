#!/bin/bash
set -e

BINARY_PATH="marktext_binary"

[ "$FLATPAK_ARCH" != "x86_64" ] && echo "[ERROR] Invalid architecture!" && exit 1;
[ ! -d "$BINARY_PATH" ] && echo "[ERROR] Cannot find binary!" && exit 1;

# Install desktop file and icons
install -Dm644 resources/linux/marktext.desktop /app/share/applications/marktext.desktop
install -Dm644 resources/linux/marktext.appdata.xml /app/share/appdata/marktext.appdata.xml
for IMG_SIZE in 16 24 32 48 64 128 256 512; do
    IMG_NAME=${IMG_SIZE}x${IMG_SIZE}
    install -Dm644 resources/icons/${IMG_NAME}/marktext.png /app/share/icons/hicolor/${IMG_NAME}/apps/marktext.png
done

mkdir -p /app/marktext
mv ${BINARY_PATH}/* /app/marktext

ln -sf /app/marktext/marktext /app/bin/marktext

exit 0
