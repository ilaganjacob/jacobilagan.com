#!/bin/sh
# Renders the Open Graph images (1200x630) with headless Chrome:
#   tools/og-home.html  -> public/og.png        (portfolio pages)
#   tools/og-image.html -> public/og-image.png  (Order Integrity page)
set -e
cd "$(dirname "$0")/.."
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
render() {
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 \
    --allow-file-access-from-files --virtual-time-budget=3000 \
    --window-size=1200,630 --screenshot="$PWD/public/$2" "file://$PWD/tools/$1"
}
render og-home.html og.png
render og-image.html og-image.png
