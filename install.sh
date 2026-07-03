#!/usr/bin/env bash
# ArxOS Wallpaper Manager - installer
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
sudo install -Dm755 "$DIR/arxos-wallpaper" /usr/local/bin/arxos-wallpaper
sudo install -Dm644 "$DIR/arxos-wallpaper.desktop" /usr/share/applications/arxos-wallpaper.desktop
echo "ArxOS Wallpaper Manager installed. Launch: arxos-wallpaper"

sudo install -Dm755 "/arxos-slideshow" /usr/local/bin/arxos-slideshow 2>/dev/null || sudo install -m755 arxos-slideshow /usr/local/bin/arxos-slideshow
