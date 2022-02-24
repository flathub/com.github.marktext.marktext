#!/bin/bash
set -e

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Platform//21.08 org.freedesktop.Sdk//21.08
flatpak install flathub org.electronjs.Electron2.BaseApp//21.08
