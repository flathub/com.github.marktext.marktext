#!/bin/bash
set -e

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Platform//20.08 org.freedesktop.Sdk//20.08
flatpak install flathub org.electronjs.Electron2.BaseApp//20.08
