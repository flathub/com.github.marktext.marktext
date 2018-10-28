#!/bin/bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#export G_MESSAGES_DEBUG=all

pushd "${ROOT_DIR}/.." > /dev/null
flatpak-builder --run build "${ROOT_DIR}/../com.github.marktext.marktext.json" marktext
popd > /dev/null
